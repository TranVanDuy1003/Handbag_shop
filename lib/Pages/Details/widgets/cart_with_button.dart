import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Colors.dart';
import '../../../models/Product.dart';

class CartWithButton extends StatelessWidget {
  const CartWithButton({
    super.key,
    required this.size,
    required this.product,
  });

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.15,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              border: Border.all(color: product.color, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.cart,
                color: product.color,
              ),
            ),
          ),
          Container(
            width: size.width * 0.7,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kTextLightColor.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: product.color,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
