import 'package:alysah_app/models/transaction_model.dart';
import 'package:alysah_app/providers/transaction_provider.dart';
import 'package:alysah_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderCard extends StatelessWidget {
  final TransactionModel transactions;
  OrderCard(this.transactions);

  @override
  Widget build(BuildContext context) {
    TransactionProvider transactionProvider =
        Provider.of<TransactionProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Image.network(
              'http://wahyudin.tokoalysha.my.id/storage/gallery/logo.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: transactions.productlist
                      .map((e) => Text(
                            '${e['product']['name'].toString()}',
                            style: primaryTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 14,
                              decoration: TextDecoration.none,
                            ),
                          ))
                      .toList(),
                ),
                Text('Rp.${transactions.total_price}',
                    style: priceTextStyle.copyWith(
                      fontSize: 10,
                      decoration: TextDecoration.none,
                    )),
                Text('Status : ${transactions.status}',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 10,
                      decoration: TextDecoration.none,
                    )),
                Text('${transactions.productlist.length} Produk',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 10,
                      decoration: TextDecoration.none,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
