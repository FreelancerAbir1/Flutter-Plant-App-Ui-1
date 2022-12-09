import 'package:flutter/material.dart';
import 'package:flutter_ui2/constant.dart';
import 'package:flutter_ui2/model/model.dart';
import 'package:flutter_ui2/screen/Details%20Screen/Featured%20Details%20Screen/featured_details_screen.dart';

import 'featured_btn.dart';
import 'featured_plant_card.dart';
import 'recomend_plant_card.dart';
import 'recomend_text.dart';
import 'search_box.dart';
import 'user_name.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //! search option and appbar  ===============================
          Stack(
            clipBehavior: Clip.none,
            children: [
              const UserName(
                name: 'Abir',
                logo: 'assets/images/logo.png',
              ),
              Positioned(
                bottom: -10,
                left: 0,
                right: 0,
                child: SearchBox(
                  searchbox: 'Search..',
                  press: (value) {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          //! Recommend Button ===============================
          RecomendButton(
            recomendText: 'Recomended',
            press: () {},
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          //! Recommend Plants Card ============================
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  recomendProduct.length,
                  (index) => RecomendPlantCard(
                    recomendProduct: recomendProduct[index],
                    press: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          //! Featured Plants Button======================================
          FeaturedButton(
            featuredText: 'Featured Plants',
            press: () {},
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          //!Featured plants Card =========================================
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  featuredProduct.length,
                  (index) => FeaturedPlantCard(
                    featuredProduct: featuredProduct[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FeaturedDetailsScreen(
                              index: index,
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
