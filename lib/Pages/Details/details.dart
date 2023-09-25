import 'package:e_commerce_app/Pages/Details/widgets/box_white.dart';
import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/color_size.dart';
import 'widgets/info_image.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  final Product product;
  DetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBarDetails(context),
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            WhiteBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  InfoWithImage(product: product),
                  ColorAndSize(
                    product: product,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar AppBarDetails(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
