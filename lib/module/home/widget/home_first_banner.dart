import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokopedia_clone_danu/data/home_first_banner_data.dart';

import '../../../util/theme/constant.dart';

class HomeFirstBanner extends StatelessWidget {
  const HomeFirstBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            homeFirstBannerData.length,
            (index) {
              var item = homeFirstBannerData[index];
              return Container(
                margin: EdgeInsets.only(right: 10),
                height: 130,
                width: Get.width - 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      '${item}',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    defaultRadiusCircular,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
