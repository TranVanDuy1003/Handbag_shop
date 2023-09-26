import 'package:e_commerce_app/Pages/Details/widgets/box_white.dart';
import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/cart_with_button.dart';
import 'widgets/color_size.dart';
import 'widgets/counter_and_fav.dart';
import 'widgets/description.dart';
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
      body: SingleChildScrollView(
        child: Container(
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
                    ColorAndSize(product: product),
                    Description(product: product),
                    CounterAndFav(),
                    CartWithButton(size: size, product: product)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar AppBarDetails(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      leading: IconButton(
        splashRadius: 25,
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 25,
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          splashRadius: 25,
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
