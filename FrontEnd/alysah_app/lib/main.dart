import 'package:alysah_app/pages/checkout_page.dart';
import 'package:alysah_app/pages/checkout_success_page.dart';
import 'package:alysah_app/pages/home/cart_page.dart';
import 'package:alysah_app/pages/home/edit_profile_page.dart';
import 'package:alysah_app/pages/home/home_page.dart';
import 'package:alysah_app/pages/home/location_tracking.dart';
import 'package:alysah_app/pages/home/main_page.dart';
import 'package:alysah_app/pages/home/profile_page.dart';
import 'package:alysah_app/pages/home/wishlist_page.dart';
import 'package:alysah_app/pages/order_page.dart';
import 'package:alysah_app/pages/sign_in_page.dart';
import 'package:alysah_app/pages/sign_up_page.dart';
import 'package:alysah_app/pages/splash_page.dart';
import 'package:alysah_app/providers/auth_provider.dart';
import 'package:alysah_app/providers/cart_provider.dart';
import 'package:alysah_app/providers/page_provider.dart';
import 'package:alysah_app/providers/product_provider.dart';
import 'package:alysah_app/providers/transaction_provider.dart';
import 'package:alysah_app/providers/wishlist_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => WishlistProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => TransactionProvider()),
        ChangeNotifierProvider(create: (context) => PageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main': (context) => MainPage(),
          '/profile': (context) => ProfilePage(),
          '/wishlist': (context) => WishlistPage(),
          '/home': (context) => HomePage(),
          '/cart': (context) => CartPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/checkout': ((context) => CheckoutPage()),
          '/checkout-success': ((context) => CheckoutSuccessPage()),
          '/order-page': ((context) => OrderPage()),
          '/location_tracking': ((context) => LocationTracking()),
          //'/splash_page': ((context) => SplashPage()),
        },
      ),
    );
  }
}
