import 'package:flutter/material.dart';

import '../../../util/theme/constant.dart';

class OfficialCategory extends StatelessWidget {
  const OfficialCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(5),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(
                defaultRadiusCircular,
              ),
            ),
            child: Row(children: [
              Icon(
                Icons.event_available,
                color: Colors.purple,
              ),
              SizedBox(width: 3),
              Text(
                'Pasti Ready',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ]),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(5),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(
                defaultRadiusCircular,
              ),
            ),
            child: Row(children: [
              Icon(
                Icons.discount,
                color: Colors.purple,
              ),
              SizedBox(width: 3),
              Text(
                'Pasti Ori',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ]),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(5),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(
                defaultRadiusCircular,
              ),
            ),
            child: Row(children: [
              Icon(
                Icons.shield,
                color: Colors.purple,
              ),
              SizedBox(width: 3),
              Text(
                'Garansi',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
