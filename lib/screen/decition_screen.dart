import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import 'Home Screen/home_screen.dart';

class DecitionScreen extends StatefulWidget {
  const DecitionScreen({super.key});

  @override
  State<DecitionScreen> createState() => _DecitionScreenState();
}

class _DecitionScreenState extends State<DecitionScreen> {
  //! here define screen===============
  List home = [
    const HomeScreen(),
    Scaffold(
      body: Container(
        color: Colors.red,
      ),
    ),
    Scaffold(
      body: Container(
        color: Colors.yellow,
      ),
    ),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white60,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/flower.svg',
                color: _currentIndex == 0 ? kPrimaryColor : kTextColor,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/heart-icon.svg',
                color: _currentIndex == 1 ? kPrimaryColor : kTextColor,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user-icon.svg',
                color: _currentIndex == 2 ? kPrimaryColor : kTextColor,
              ),
              label: ' '),
        ],
      ),
      body: home[_currentIndex],
    );
  }
}
