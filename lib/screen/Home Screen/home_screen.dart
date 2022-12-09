import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: buildAppBar(
        'assets/icons/menu.svg',
      ),
      body: const Body(),
    );
  }

  AppBar buildAppBar(icon) {
    return AppBar(
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              icon,
            ),
          );
        },
      ),
    );
  }
}
