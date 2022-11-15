import 'package:flutter/material.dart';

import 'official_brand_pilihan.dart';
import 'official_category.dart';

class OfficialHomeTab extends StatelessWidget {
  const OfficialHomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('asset/image/banner-3.jpeg'))),
        ),
        SizedBox(height: 10),
        OfficialCategory(),
        OfficialBrandPilihan(),
      ],
    );
  }
}
