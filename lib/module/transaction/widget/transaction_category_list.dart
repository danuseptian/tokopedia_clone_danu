import 'package:flutter/material.dart';

import '../../../data/transaction_category_data.dart';
import '../../../util/theme/constant.dart';

class TransactionCategoryList extends StatelessWidget {
  const TransactionCategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          transactionCategoryData.length,
          (index) {
            var item = transactionCategoryData[index];
            return Container(
              margin: EdgeInsets.only(
                right: 10,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadiusCircular),
                  border: Border.all(
                    color: Colors.black26,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${item}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey[700],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
