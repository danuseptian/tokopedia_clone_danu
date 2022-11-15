import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/util/theme/constant.dart';

import '../widget/home_balance.dart';
import '../widget/home_first_banner.dart';
import '../widget/home_first_category.dart';
import '../widget/home_promo.dart';
import '../widget/home_second_category.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeBalance(),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadiusCircular),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                HomeFirstCategory(),
                HomeFirstBanner(),
                SizedBox(height: 15),
                HomeSecondCategory(),
                HomePromo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
