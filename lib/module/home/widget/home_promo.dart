import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/data/home_promo_data.dart';

import '../../../util/theme/constant.dart';

class HomePromo extends StatelessWidget {
  const HomePromo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pilihan Promo Hari Ini',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: defaultPadding),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                homePromoData.length,
                (index) {
                  var item = homePromoData[index];
                  return Container(
                    height: 200,
                    width: 120,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('${item}'),
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
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
