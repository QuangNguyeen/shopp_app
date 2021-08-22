import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'special_offer_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      //padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        // collection nhưng chỉ trong width
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // giãn khoảng các bằng nhau
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]['icon'],
            text: categories[index]['text'],
            press: () {
              print(categories[index]['text']);
            },
          ),
        ),
      ),
    );
  }
}
