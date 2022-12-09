import 'package:flutter/material.dart';

import '../../../constant.dart';

class FeaturedButton extends StatelessWidget {
  const FeaturedButton({
    Key? key,
    required this.featuredText,
    required this.press,
  }) : super(key: key);
  final String featuredText;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            featuredText,
            style: Theme.of(context).textTheme.headline6!.copyWith(),
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
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
