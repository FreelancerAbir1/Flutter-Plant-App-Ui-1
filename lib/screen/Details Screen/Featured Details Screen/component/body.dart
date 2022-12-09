import 'package:flutter/material.dart';
import 'package:flutter_ui2/model/model.dart';

import '../../../../constant.dart';
import 'buy_now_btn.dart';
import 'details_card.dart';
import 'product_details_text.dart';
import 'side_nav_bar.dart';

class Body extends StatefulWidget {
  final FeaturedProduct featuredProduct;
  const Body({
    Key? key,
    required this.featuredProduct,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        //!fixed size of image and nav bar=================
        SizedBox(
          height: size.height / 1.5,

          //! Nav bar------------
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: size.height,
                child: const SideNavBar(),
              ),
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      itemCount: 3,
                      onPageChanged: (val) {
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      itemBuilder: (context, index) {
                        return DetailsImageCard(
                          img: widget.featuredProduct.fImg,
                        );
                      },
                    ),
                    Positioned(
                      bottom: 50,
                      right: 50,
                      left: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ...List.generate(
                            3,
                            (index) => buildDot(
                              _currentIndex == index ? 25 : 10,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        //! product details text----------------
        ProductDetailsText(
          name: widget.featuredProduct.fProductName,
          cname: widget.featuredProduct.fCountryName,
          price: widget.featuredProduct.fPrice,
        ),
        const Spacer(),
        //! buy now button-------------------------
        BuyNowWithDescButton(
          textB: 'Buy Now',
          pressB: () {},
          textD: 'Description',
          pressD: () {},
        ),
      ],
    );
  }

  Padding buildDot(double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        height: 10,
        width: width,
        decoration: BoxDecoration(
          color: kTextLightColor,
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      ),
    );
  }
}
