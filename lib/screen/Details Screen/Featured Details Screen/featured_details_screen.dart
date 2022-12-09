import 'package:flutter/material.dart';
import 'package:flutter_ui2/constant.dart';
import 'package:flutter_ui2/model/model.dart';

import 'component/body.dart';

class FeaturedDetailsScreen extends StatelessWidget {
  final int index;

  const FeaturedDetailsScreen({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextLightColor,
      body: Body(
        featuredProduct: featuredProduct[index],
      ),
    );
  }
}
