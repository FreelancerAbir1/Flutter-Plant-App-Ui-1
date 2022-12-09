import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.searchbox,
    this.press,
  }) : super(key: key);
  final String searchbox;
  // ignore: prefer_typing_uninitialized_variables
  final press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDefaultPadding * 2.3,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      decoration: const BoxDecoration(
        color: kTextLightColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 01,
            color: kPrimaryColor,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(
            kDefaultPadding,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding - 15),
        child: TextFormField(
          onChanged: press,
          decoration: inputDecoration(context),
        ),
      ),
    );
  }

  InputDecoration inputDecoration(BuildContext context) {
    return InputDecoration(
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      hintText: searchbox,
      hintStyle:
          Theme.of(context).textTheme.subtitle1!.copyWith(color: kPrimaryColor),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(kDefaultPadding - 15),
        child: SvgPicture.asset(
          'assets/icons/search.svg',
        ),
      ),
    );
  }
}
