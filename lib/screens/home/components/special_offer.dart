import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'special_title.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SectionTitle(
            title: 'Special for you',
            moreTitle: 'See more',
            press: () {
              print('Tap Special for you');
            },
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCard(
                category: 'Smartphone',
                image: 'assets/images/Image Banner 2.png',
                numOfBrands: 18,
              ),
              SpecialCard(
                category: 'Fashion',
                image: 'assets/images/Image Banner 3.png',
                numOfBrands: 28,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
      ),
      child: GestureDetector(
        onTap: () {
          print('tap $category');
        },
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: '$category\n',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: '$numOfBrands brands')
                      ],
                    ),
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
