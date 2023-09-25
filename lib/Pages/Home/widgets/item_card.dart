import 'package:e_commerce_app/Pages/Details/details.dart';
import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../Colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => Card(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  product: products[index],
                ),
              ),
            );
          },
          product: products[index],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.onTap,
    required this.product,
  });
  final Product product;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 180,
            height: 200,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: kTextColor.withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: 8,
                ),
              ],
            ),
            child: Image.asset(product.image),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              product.title,
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$${product.price}',
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        )
      ],
    );
  }
}
