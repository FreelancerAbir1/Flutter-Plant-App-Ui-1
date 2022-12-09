import 'package:flutter/material.dart';
import 'package:flutter_ui2/model/model.dart';

import '../../../constant.dart';

class FeaturedPlantCard extends StatelessWidget {
  final FeaturedProduct featuredProduct;
  final GestureTapCallback press;
  const FeaturedPlantCard({
    Key? key,
    required this.press,
    required this.featuredProduct,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(
          kDefaultPadding - 10,
        ),
        margin: const EdgeInsets.all(
          kDefaultPadding - 10,
        ),
        height: size.height / 5,
        width: size.width / 1.4,
        decoration: BoxDecoration(
          border: Border.all(
            width: 01,
            color: kTextColor,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding - 8),
          image: DecorationImage(
            image: AssetImage(
              featuredProduct.fImg,
            ),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
