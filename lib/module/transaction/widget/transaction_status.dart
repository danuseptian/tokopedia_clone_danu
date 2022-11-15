import 'package:flutter/material.dart';

import '../../../util/theme/constant.dart';

class TransactionStatus extends StatelessWidget {
  const TransactionStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            defaultRadiusCircular,
          ),
          border: Border.all(
            color: Colors.black26,
          )),
      child: Row(
        children: [
          Icon(
            Icons.wallet,
            color: primaryColor,
          ),
          SizedBox(width: 10),
          Text('Menunggu Pembayaran'),
          Spacer(),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
