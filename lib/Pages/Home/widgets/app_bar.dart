import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Colors.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      splashRadius: 30,
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        splashRadius: 30,
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: kTextColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        splashRadius: 30,
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: kTextColor,
        ),
      ),
      SizedBox(width: 10),
    ],
  );
}
