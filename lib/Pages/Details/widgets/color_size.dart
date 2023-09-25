import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../Colors.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  ColorAndSize({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Color',
              style: TextStyle(
                color: kTextColor,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFFD3A984),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff3D82AE),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFF989493),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          ],
        ),
        // SizedBox(width: 100),
        Spacer(flex: 2),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Size\n',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: '\$${product.size} cm',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
      ],
    );
  }
}
