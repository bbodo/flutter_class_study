import 'package:class_carrot_market_v1/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../theme.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyLarge), // :TODO 03수정
          const SizedBox(height: 4.0),
          Text('${product.address} • ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text(
            '${numberFormat(product.price)}원',
            style: textTheme().displayMedium, // :TODO 03수정
          ),
          const Spacer(), // 남은 공간 다 차지 해줌 (여백 다 묵을께)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility( // 데이터가 있으면 보여주고 없으면 안보여줌
                visible: product.commentsCount > 0, // 0보다 작으면 안보여준다는 뜻
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildIcons(int count, IconData iconData) {
  return Row(
    children: [
      Icon(iconData, size: 14.0),
      const SizedBox(width: 4.0),
      Text('$count'),
    ],
  );
}

String numberFormat(String price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(int.parse(price));
}