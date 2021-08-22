import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/product_popular.dart';
import 'package:shop_app/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offer.dart';
import 'special_title.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            DiscountBanner(),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: SectionTitle(
                    title: "Popular Products",
                    press: () {
                      print('Popular Products');
                    },
                    moreTitle: 'More see',
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        demoProducts.length,
                        (index) {
                          if (demoProducts[index].isPopular)
                            return ProductCard(product: demoProducts[index]);
                          return SizedBox.shrink();
                        },
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
