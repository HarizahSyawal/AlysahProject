class TransactionModel {
  int id;
  int users_id;
  String address;
  double total_price;
  double shipping_price;
  String status = 'PENDING';
  String payment = 'MANUAL';
  String name = '-';
  List productlist = [];

  TransactionModel({
    this.id,
    this.users_id,
    this.address,
    this.total_price,
    this.shipping_price,
    this.status,
    this.payment,
    this.name,
  });

  TransactionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    users_id = json['users_id'];
    address = json['address'];
    total_price = double.parse(json['total_price'].toString());
    shipping_price = double.parse(json['shipping_price'].toString());
    status = json['status'];
    payment = json['payment'];
    productlist = json['items'] as List;
    //print(json);
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
    };
  }
}
