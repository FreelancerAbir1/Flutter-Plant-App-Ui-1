import 'package:flutter/material.dart';
import 'package:flutter_ui2/model/model.dart';

import '../../../constant.dart';

class RecomendPlantCard extends StatelessWidget {
  final RecomendProduct recomendProduct;
  final GestureTapCallback press;
  const RecomendPlantCard({
    Key? key,
    required this.recomendProduct,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: size.height / 3.5,
          width: size.width / 2.6,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(
                  -0,
                  01,
                ),
                spreadRadius: 0,
                color: kPrimaryColor,
                blurRadius: 0,
              ),
            ],
            color: kTextLightColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: size.height / 4.6,
                width: size.width,
                decoration: BoxDecoration(
                  color: kTextLightColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      recomendProduct.rImg,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: recomendProduct.rStoreName.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: kDefaultPadding - 8),
                        children: [
                          TextSpan(
                            text: '\n${recomendProduct.rCountryName}',
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: kPrimaryColor,
                                      fontSize: kDefaultPadding - 9,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$${recomendProduct.rPrice}',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: kPrimaryColor, fontSize: kDefaultPadding - 8),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
