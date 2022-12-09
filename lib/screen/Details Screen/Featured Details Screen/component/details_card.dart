import 'package:flutter/material.dart';

import '../../../../constant.dart';

class DetailsImageCard extends StatelessWidget {
  final String img;
  const DetailsImageCard({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      margin: const EdgeInsets.only(
        bottom: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: kTextLightColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              -10,
              10,
            ),
            blurRadius: 10,
            spreadRadius: 12,
            color: kPrimaryColor.shade50,
          ),
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
        image: DecorationImage(
          alignment: Alignment.topCenter,
          fit: BoxFit.fitHeight,
          image: AssetImage(
            img,
          ),
        ),
      ),
    );
  }
}
