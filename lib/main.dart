import 'package:flutter/material.dart';
import 'package:flutter_ui2/constant.dart';
import 'package:flutter_ui2/responsive/android%20view/android_view.dart';
import 'package:flutter_ui2/responsive/responsive.dart';

import 'responsive/apple view/apple_view.dart';
import 'responsive/mac view/mac_view.dart';
import 'responsive/windows view/windows_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Plant App',
      debugShowCheckedModeBanner: false,
      theme: customTheme(),
      home: const Responsive(
        myAndroidView: MyAndroidView(),
        myWindowsView: MyWindowsView(),
        myAppleView: MyAppleView(),
        myMacView: MyMacView(),
      ),

      //  routes: routes,
    ),
  );
}
