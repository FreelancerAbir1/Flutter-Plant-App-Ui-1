import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.myAndroidView,
      required this.myWindowsView,
      required this.myAppleView,
      required this.myMacView});

  final Widget myAndroidView;
  final Widget myWindowsView;
  final Widget myAppleView;
  final Widget myMacView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 500) {
        return myAndroidView;
      }
      return myWindowsView;
    });
  }
}
