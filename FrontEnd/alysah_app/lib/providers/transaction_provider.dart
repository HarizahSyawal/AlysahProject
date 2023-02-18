import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/cart_model.dart';
import '../models/product_model.dart';
import '../models/transaction_model.dart';
import '../services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  List<TransactionModel> _transactions = [];
  List<TransactionModel> get transactions => _transactions;

  set transactions(List<TransactionModel> transaction) {
    _transactions = transaction;
    notifyListeners();
  }

  Future<bool> checkout({
    String token,
    List<CartModel> carts,
    double totalPrice,
    String address,
  }) async {
    try {
      if (await TransactionService().checkout(
          token: token,
          carts: carts,
          totalPrice: totalPrice,
          address: address)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> getTransactions({String token}) async {
    try {
      List<TransactionModel> transactions =
          await TransactionService().getTransactions(token);
      _transactions = transactions;
    } catch (e) {
      print(e);
    }
  }
}
