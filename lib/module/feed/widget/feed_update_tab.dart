import 'package:flutter/material.dart';

import 'feed_live.dart';
import 'feed_post.dart';

class FeedUpdateTab extends StatelessWidget {
  const FeedUpdateTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FeedLive(),
        SizedBox(height: 10),
        FeedPost(),
      ],
    );
  }
}
