import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'icon_button_with_counter.dart';
import 'seach_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchFeild(),
          IconButtonWithCounter(
            image: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconButtonWithCounter(
            image: 'assets/icons/Bell.svg',
            press: () {},
            numOfItem: 3,
          ),
        ],
      ),
    );
  }
}
