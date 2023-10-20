import 'package:class_carrot_market_v1/theme.dart';

import '../../../models/icon_menu.dart';
import 'package:flutter/material.dart';

class CardIconMenu extends StatelessWidget {
  // UI 에 데이터 까지 포함해서 코드를 설계해 나가고 있다.
  final List<IconMenu> iconMenuList;

  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: List.generate(
          iconMenuList.length,
          (index) => _buildIconItem(
            iconMenuList[index].title,
            iconMenuList[index].iconData,
          ),
        ),
      ),
    );
  }

  Widget _buildIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17),
          const SizedBox(width: 20),
          Text(title, style: textTheme().titleMedium)
        ],
      ),
    );
  }
}
