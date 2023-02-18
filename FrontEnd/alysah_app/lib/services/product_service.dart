import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductService {
  // http://localhost:SPECIFIC_PORT // port 80 by default
//  or
// http://127.0.0.1:SPECIFIC_PORT (IOS EMU)
// http://10.0.2.2:SPECIFIC_PORT (ANDROID EMU)
// For Example
// http://localhost:8000/api/users

  //localhost
  String baseUrl = 'http://wahyudin.tokoalysha.my.id/api';
  //String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse('$url'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception('Failed to get products');
    }
  }
}
