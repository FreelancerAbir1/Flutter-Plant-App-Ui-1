import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';
import 'nav_card.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height / 3,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          kTextLightColor.withAlpha(0),
          kPrimaryColor.shade50,
          kPrimaryColor.shade50,
        ])),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
            ),
            const Spacer(
              flex: 2,
            ),
            const NavCard(img: 'assets/icons/sun.svg'),
            const Spacer(
              flex: 1,
            ),
            const NavCard(img: 'assets/icons/icon_2.svg'),
            const Spacer(
              flex: 1,
            ),
            const NavCard(img: 'assets/icons/icon_3.svg'),
            const Spacer(
              flex: 1,
            ),
            const NavCard(img: 'assets/icons/icon_4.svg'),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
