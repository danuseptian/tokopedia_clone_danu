import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/util/theme/constant.dart';

import '../widget/transaction_category_list.dart';
import '../widget/transaction_data_list.dart';
import '../widget/transaction_status.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(defaultPadding),
        children: [
          TransactionCategoryList(),
          SizedBox(height: 15),
          TransactionStatus(),
          SizedBox(height: 10),
          TransactionDataList(),
        ],
      ),
    );
  }
}
