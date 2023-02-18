import 'dart:convert';
import 'package:alysah_app/models/transaction_model.dart';
import 'package:http/http.dart' as http;
import '../models/cart_model.dart';
import '../models/product_model.dart';

class TransactionService {
// http://localhost:SPECIFIC_PORT // port 80 by default
//  or
// http://127.0.0.1:SPECIFIC_PORT (IOS EMU)
// http://10.0.2.2:SPECIFIC_PORT (ANDROID EMU)
// For Example
// http://localhost:8000/api/users

  //localhost
  String baseUrl = 'http://wahyudin.tokoalysha.my.id/api';

  Future<bool> checkout({
    String token,
    List<CartModel> carts,
    double totalPrice,
    String address,
  }) async {
    var url = '$baseUrl/checkout';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode({
      'address': address,
      'items': carts
          .map((cart) => {
                'id': cart.product.id,
                'quantity': cart.quantity,
              })
          .toList(),
      'status': 'PENDING',
      'total_price': totalPrice,
      'shipping_price': 0,
    });

    var response = await http.post(
      Uri.parse('$url'),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Checkout Failed!');
    }
  }

  Future<List<TransactionModel>> getTransactions(String token) async {
    List<ProductModel> products;
    var url = '$baseUrl/transaction';
    var headers = {'Content-Type': 'application/json', 'Authorization': token};

    var response = await http.get(
      Uri.parse('$url'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<TransactionModel> transactions = [];

      for (var item in data) {
        transactions.add(TransactionModel.fromJson(item));
      }

      // print(response.body);

      return transactions;
    } else {
      throw Exception('Failed to get transactions');
    }
  }
}
