// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// import '../../services/googlemap_api.dart';

// class LocationTracking extends StatefulWidget {
//   const LocationTracking({Key key}) : super(key: key);

//   @override
//   _LocationTrackingState createState() => _LocationTrackingState();
// }

// class _LocationTrackingState extends State<LocationTracking> {
//   final Completer<GoogleMapController> ctr = Completer<GoogleMapController>();

//   @override
//   void dispose() {
//     // controller.complete()
//     super.dispose();
//   }

//   // ignore: prefer_collection_literals, prefer_final_fields
//   Set<Marker> _marker = Set<Marker>();

//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//   LocationData currentLocation;
//   LocationData destinationLocation;
//   Location location;
//   @override
//   void initState() {
//     super.initState();
//     location = Location();
//     // polylinePoints = PolylinePoints();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: GoogleMap(
//           mapType: MapType.normal,
//           markers: _marker,
//           initialCameraPosition: _kGooglePlex,
//           onMapCreated: (GoogleMapController controller) {
//             print("jlkj");
//             ctr.complete(controller);
//           },
//         ),
//       ),
//     );
//   }

//   // @override
//   // void dispose() {
//   //   subscription.cancel();
//   //   super.dispose();
//   // }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import '../../services/googlemap_api.dart';

class LocationTracking extends StatefulWidget {
  const LocationTracking({Key key}) : super(key: key);

  @override
  _LocationTrackingState createState() => _LocationTrackingState();
}

class _LocationTrackingState extends State<LocationTracking> {
  LatLng sourceLocation = LatLng(-5.1114743, 119.2625408);
  LatLng destinationLatlng = LatLng(-5.1114743, 119.2625408);

  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _marker = Set<Marker>();

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints;

  StreamSubscription<LocationData> subscription;

  LocationData currentLocation;
  LocationData destinationLocation;
  Location location;

  @override
  void initState() {
    super.initState();

    location = Location();
    polylinePoints = PolylinePoints();

    subscription = location.onLocationChanged.listen((clocation) {
      currentLocation = clocation;

      updatePinsOnMap();
    });

    setInitialLocation();
  }

  void setInitialLocation() async {
    await location.getLocation().then((value) {
      currentLocation = value;
      setState(() {});
    });

    destinationLocation = LocationData.fromMap({
      "latitude": destinationLatlng.latitude,
      "longitude": destinationLatlng.longitude,
    });
  }

  void showLocationPins() {
    var sourceposition = LatLng(currentLocation.latitude ?? -5.1114743,
        currentLocation.longitude ?? 119.2625408);

    var destinationPosition =
        LatLng(destinationLatlng.latitude, destinationLatlng.longitude);

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));

    _marker.add(
      Marker(
        markerId: MarkerId('destinationPosition'),
        position: destinationPosition,
      ),
    );

    setPolylinesInMap();
  }

  void setPolylinesInMap() async {
    var result = await polylinePoints.getRouteBetweenCoordinates(
      GoogleMapApi().url,
      PointLatLng(currentLocation.latitude ?? -5.1114743,
          currentLocation.longitude ?? 119.2625408),
      PointLatLng(destinationLatlng.latitude, destinationLatlng.longitude),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((pointLatLng) {
        polylineCoordinates
            .add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
      });
    }

    setState(() {
      _polylines.add(Polyline(
        width: 5,
        polylineId: PolylineId('polyline'),
        color: Colors.blueAccent,
        points: polylineCoordinates,
      ));
    });
  }

  void updatePinsOnMap() async {
    CameraPosition cameraPosition = CameraPosition(
      zoom: 20,
      tilt: 80,
      bearing: 30,
      target: LatLng(currentLocation.latitude ?? -5.1114743,
          currentLocation.longitude ?? 119.2625408),
    );

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(currentLocation.latitude ?? -5.1114743,
        currentLocation.longitude ?? 119.2625408);

    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      _marker.add(Marker(
        markerId: MarkerId('sourcePosition'),
        position: sourcePosition,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
      zoom: 20,
      tilt: 80,
      bearing: 30,
      target: currentLocation != null
          ? LatLng(-5.1114743, 119.2625408)
          : LatLng(-5.1114743, 119.2625408),
    );

    return currentLocation == null
        ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          )
        : SafeArea(
            child: Scaffold(
              body: GoogleMap(
                myLocationButtonEnabled: true,
                compassEnabled: true,
                markers: _marker,
                polylines: _polylines,
                mapType: MapType.normal,
                initialCameraPosition: initialCameraPosition,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);

                  // showLocationPins();
                },
              ),
            ),
          );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}
