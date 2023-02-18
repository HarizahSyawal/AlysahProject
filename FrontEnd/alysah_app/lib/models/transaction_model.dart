import 'package:alysah_app/models/product_model.dart';
import 'package:alysah_app/widgets/order_card.dart';

class TransactionModel {
  int id;
  int users_id;
  String address;
  double total_price;
  double shipping_price;
  String status = 'PENDING';
  String payment = 'MANUAL';
  // List<TransactionItem> items;

  TransactionModel({
    this.id,
    this.users_id,
    this.address,
    this.total_price,
    this.shipping_price,
    this.status,
    this.payment,
    // this.items,
  });

  TransactionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    users_id = json['users_id'];
    address = json['address'];
    total_price = double.parse(json['total_price'].toString());
    shipping_price = double.parse(json['shipping_price'].toString());
    status = json['status'];
    payment = json['payment'];
    // items = json['items']
    //     .map<TransactionItem>((items) => TransactionItem.fromJson(items))
    //     .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'users_id': users_id,
      'address': address,
      'total_price': total_price,
      'shipping_price': shipping_price,
      'status': status,
      'payment': payment,
      // 'items': items.map((items) => items.toJson()).toList(),
    };
  }
}

// class TransactionItem {
//   int id;
//   int users_id;
//   int products_id;
//   int transactions_id;
//   int quantity;
//   List<ProductModel> products;

//   TransactionItem.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     users_id = json['users_id'];
//     products_id = json['products_id'];
//     transactions_id = json['transactions_id'];
//     quantity = json['quantity'];
//     products = json['product']
//         .map<ProductModel>((product) => ProductModel.fromJson(product))
//         .toList();
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'users_id': users_id,
//       'products_id': products_id,
//       'transactions_id': transactions_id,
//       'quantity': quantity,
//       'products': products.map((product) => product.toJson()).toList(),
//     };
//   }
// }
