import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/data/home_first_category_data.dart';

class HomeFirstCategory extends StatelessWidget {
  const HomeFirstCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: List.generate(
            homeFirstCategoryData.length,
            (index) {
              var item = homeFirstCategoryData[index];
              return Container(
                margin: EdgeInsets.only(right: 10),
                width: 75,
                height: 90,
                child: Column(
                  children: [
                    Image.asset(
                      '${item["icon"]}',
                      height: 30,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${item["title"]}',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
