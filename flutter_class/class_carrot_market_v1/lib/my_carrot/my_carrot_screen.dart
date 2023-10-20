import 'package:class_carrot_market_v1/models/icon_menu.dart';
import 'package:class_carrot_market_v1/my_carrot/components/card_icon_menu.dart';
import 'package:class_carrot_market_v1/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('나의당근'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          CardIconMenu(iconMenuList: iconMenu1),
          CardIconMenu(iconMenuList: iconMenu2),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
