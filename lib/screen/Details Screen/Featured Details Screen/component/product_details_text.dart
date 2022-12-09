import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ProductDetailsText extends StatelessWidget {
  const ProductDetailsText({
    Key? key,
    required this.name,
    required this.cname,
    required this.price,
  }) : super(key: key);

  final String name;
  final String cname;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: name,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: 50,
                    color: kPrimaryColor,
                  ),
              children: [
                TextSpan(
                  text: '\n $cname',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
          Text(
            '\$$price',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: kPrimaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
