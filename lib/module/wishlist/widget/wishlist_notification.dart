import 'package:flutter/material.dart';

import '../../../util/theme/constant.dart';

class WishlistNotification extends StatelessWidget {
  const WishlistNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(defaultRadiusCircular),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pakai fitur Koleksi, Wish jadi rapi!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.close,
                color: Colors.grey[700],
              )
            ],
          ),
          Text(
            'Kelompokkan barang di Wishlist sesukamu',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
