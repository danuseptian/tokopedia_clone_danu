import 'package:flutter/material.dart';
import 'package:tokopedia_clone_danu/module/main_navigation/view/main_navigation_view.dart';
import 'package:tokopedia_clone_danu/util/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      home: MainNavigationView(),
    );
  }
}
