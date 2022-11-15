import 'package:flutter/material.dart';
import '../widget/official_home_tab.dart';

class OfficialStoreView extends StatelessWidget {
  const OfficialStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0,
          bottom: TabBar(
            labelColor: Colors.purple,
            indicatorColor: Colors.purple,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: Colors.grey[500],
            tabs: <Tab>[
              Tab(
                text: 'Home',
                icon: Icon(
                  Icons.verified,
                ),
              ),
              Tab(
                text: 'Electronic',
                icon: Icon(
                  Icons.tv,
                ),
              ),
              Tab(
                text: 'Video',
                icon: Icon(
                  Icons.phone_iphone,
                ),
              ),
              Tab(
                text: 'Bycycle',
                icon: Icon(
                  Icons.pedal_bike,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          OfficialHomeTab(),
          Container(),
          Container(),
          Container(),
        ]),
      ),
    );
  }
}
