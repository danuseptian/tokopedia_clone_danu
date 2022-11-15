import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/module/feed/widget/feed_update_tab.dart';

class FeedView extends StatelessWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Tab>[
              Tab(text: 'Update'),
              Tab(text: 'Explore'),
              Tab(text: 'Video'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FeedUpdateTab(),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
