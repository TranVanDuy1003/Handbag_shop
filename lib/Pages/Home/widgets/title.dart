import 'package:e_commerce_app/Colors.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        'Women',
        style: TextStyle(
          color: kTextColor,
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
