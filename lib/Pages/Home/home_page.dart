import 'package:e_commerce_app/Pages/Home/widgets/title.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/categories.dart';
import 'widgets/item_card.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(),
            Categories(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}
