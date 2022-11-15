import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokopedia_clone_danu/module/main_navigation/controller/main_navigation_controller.dart';

import '../../../util/theme/constant.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainNavigationController controller = Get.put(MainNavigationController());

    return GetBuilder<MainNavigationController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(defaultRadiusCircular),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5),
                Text(
                  'Cari di Tokopedia',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
          ),
          actions: [
            Badge(
              position: BadgePosition.topEnd(top: 2, end: -4),
              padding: EdgeInsets.all(6),
              badgeContent: Text(
                '5',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.mail_outline,
                color: Colors.grey[100],
              ),
            ),
            SizedBox(width: 5),
            Badge(
              position: BadgePosition.topEnd(top: 2, end: -4),
              padding: EdgeInsets.all(6),
              badgeContent: Text(
                '8',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.grey[100],
              ),
            ),
            SizedBox(width: 5),
            Badge(
              position: BadgePosition.topEnd(top: 4, end: -4),
              padding: EdgeInsets.all(3),
              badgeContent: Text(
                '28',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey[100],
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.menu,
              color: Colors.grey[100],
            ),
            SizedBox(width: 15),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.onTap,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.feed_outlined,
              ),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.verified_user_outlined,
              ),
              label: 'Official',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note_alt_outlined,
              ),
              label: 'Transaksi',
            ),
          ],
        ),
        body: Container(
          child: controller.bottomTabView.elementAt(controller.currentIndex),
        ),
      );
    });
  }
}
