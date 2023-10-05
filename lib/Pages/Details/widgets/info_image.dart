import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class InfoWithImage extends StatelessWidget {
  const InfoWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aristocratic hand bag',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        Text(
          product.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 33,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'price',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Hero(
              tag: product.id,
              child: Image.asset(
                product.image,
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
