import 'package:flutter/material.dart';

import '../../../constant.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
    required this.name,
    required this.logo,
  }) : super(key: key);

  final String name;
  final String logo;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 5.5,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hi $name!',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kTextLightColor,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(logo),
          )
        ],
      ),
    );
  }
}
