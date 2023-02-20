import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/wishlist_provider.dart';
import '../models/product_model.dart';
import '../theme.dart';

class WishlistCard extends StatelessWidget {
  final ProductModel product;
  WishlistCard(this.product);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

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
              'http://wahyudin.tokoalysha.my.id${product.galleries[0].url}',
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
                Text(
                  product.name,
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'Rp.${product.price}',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/icon_wishlist.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
