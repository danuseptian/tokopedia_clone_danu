import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokopedia_clone_danu/module/feed/view/feed_view.dart';
import 'package:tokopedia_clone_danu/module/home/view/home_view.dart';
import 'package:tokopedia_clone_danu/module/official_store/view/official_store_view.dart';
import 'package:tokopedia_clone_danu/module/transaction/view/transaction_view.dart';
import 'package:tokopedia_clone_danu/module/wishlist/view/wishlist_view.dart';

class MainNavigationController extends GetxController {
  int currentIndex = 0;

  void onTap(index) {
    currentIndex = index;
    update();
  }

  List<Widget> bottomTabView = [
    HomeView(),
    FeedView(),
    OfficialStoreView(),
    WishlistView(),
    TransactionView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
