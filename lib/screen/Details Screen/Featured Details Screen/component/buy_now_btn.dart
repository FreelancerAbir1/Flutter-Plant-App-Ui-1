import 'package:flutter/material.dart';

import '../../../../constant.dart';

class BuyNowWithDescButton extends StatelessWidget {
  const BuyNowWithDescButton({
    Key? key,
    required this.textB,
    required this.textD,
    required this.pressB,
    required this.pressD,
  }) : super(key: key);
  final String textB;
  final String textD;
  final GestureTapCallback pressB;
  final GestureTapCallback pressD;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Row(
        children: [
          GestureDetector(
            onTap: pressB,
            child: Container(
              width: size.width / 2,
              height: size.height,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(
                      0,
                      5,
                    ),
                    color: kPrimaryColor.shade100,
                    blurRadius: 15,
                    spreadRadius: 01,
                  )
                ],
                color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(
                    50,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  textB,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: kTextLightColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: pressD,
            child: Container(
              height: size.height,
              width: size.width / 2,
              color: kTextLightColor,
              child: Center(
                child: Text(
                  textD,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
