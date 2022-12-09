import 'package:flutter/material.dart';

import '../../../constant.dart';

class RecomendButton extends StatelessWidget {
  const RecomendButton({
    Key? key,
    required this.recomendText,
    required this.press,
  }) : super(key: key);
  final String recomendText;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            recomendText,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          MaterialButton(
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            onPressed: press,
            child: Text(
              'More',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kTextLightColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
