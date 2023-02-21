import 'package:alysah_app/providers/transaction_provider.dart';
import 'package:alysah_app/theme.dart';
import 'package:alysah_app/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';
import '../providers/auth_provider.dart';

class OrderPage extends StatefulWidget {
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    TransactionProvider transactionProvider =
        Provider.of<TransactionProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Future<void> _loadResources(bool reload) async {
      await Provider.of<TransactionProvider>(context, listen: false)
          .getTransactions(token: user.token);
    }

    @override
    void initState() {
      super.initState();
      _loadResources(true);
    }

    Widget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Pesanan Saya',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: transactionProvider.transactions
                .map(
                  (transaction) => OrderCard(transaction),
                )
                .toList(),
          ),
        ),
      );
    }

    Widget emptyWishList() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_cart.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Belum Ada Pesanan ?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Belanja Sekarang',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await _loadResources(true);
      },
      child: Column(
        children: [
          header(),
          transactionProvider.transactions.isEmpty
              ? emptyWishList()
              : content(),
        ],
      ),
    );
  }
}
