import 'package:flutter/material.dart';

import '../../../Colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Hand bag',
    'Jewellery',
    'Footwear',
    'Dresses',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: selectedIndex == index ? 17 : 15,
                    fontWeight: FontWeight.w600,
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor,
                  ),
                ),
                Container(
                  height: 2,
                  width: 50,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? kTextColor
                        : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
