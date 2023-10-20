
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {

  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});

}


// 샘플 데이터를 만들기
List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.angleLeft),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.cableCar),
  IconMenu(title: '키워드 알림', iconData: FontAwesomeIcons.addressCard),
  IconMenu(title: '모아보기', iconData: FontAwesomeIcons.airbnb),
];
List<IconMenu> iconMenu2 = [
  IconMenu(title: '동네생활 글', iconData: FontAwesomeIcons.edit),
  IconMenu(title: '동네생활 댓글', iconData: FontAwesomeIcons.commentDots),
  IconMenu(title: '동네생활 주제 목록', iconData: FontAwesomeIcons.star),

];
List<IconMenu> iconMenu3 = [
  IconMenu(title: '비즈프로필 관리', iconData: FontAwesomeIcons.store),
  IconMenu(title: '지역광고', iconData: FontAwesomeIcons.bullhorn)
];