import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/data/feed_live_data.dart';

import '../../../util/theme/constant.dart';

class FeedLive extends StatelessWidget {
  const FeedLive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nonton yang seru-seru',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: defaultPadding),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  feedLiveData.length,
                  (index) {
                    var item = feedLiveData[index];
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(5),
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('${item['image']}'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: primaryColor,
                          width: 2,
                        ),
                        borderRadius:
                            BorderRadius.circular(defaultRadiusCircular),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      defaultRadiusCircular,
                                    ),
                                    bottomLeft: Radius.circular(
                                      defaultRadiusCircular,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Live',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                      defaultRadiusCircular,
                                    ),
                                    bottomRight: Radius.circular(
                                      defaultRadiusCircular,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  '${item['view']}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            '${item['title']}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
          )
        ],
      ),
    );
  }
}
