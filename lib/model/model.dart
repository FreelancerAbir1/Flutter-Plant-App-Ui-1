//!Recomend Product class here ===================
class RecomendProduct {
  final int rId;
  final String rImg;
  final String rStoreName;
  final String rCountryName;
  final double rPrice;
  RecomendProduct({
    required this.rId,
    required this.rImg,
    required this.rStoreName,
    required this.rCountryName,
    required this.rPrice,
  });
}

List<RecomendProduct> recomendProduct = [
  RecomendProduct(
    rId: 1,
    rImg: 'assets/images/image_1.png',
    rStoreName: 'samantha',
    rCountryName: 'Russia',
    rPrice: 300,
  ),
  RecomendProduct(
    rId: 2,
    rImg: 'assets/images/image_2.png',
    rStoreName: 'assata',
    rCountryName: 'Korea',
    rPrice: 240,
  ),
  RecomendProduct(
    rId: 3,
    rImg: 'assets/images/image_3.png',
    rStoreName: 'yanhow',
    rCountryName: 'China',
    rPrice: 450,
  ),
];

class FeaturedProduct {
  final int fId;
  final String fImg;
  final String fStoreName;
  final String fCountryName;
  final double fPrice;
  final String fProductName;

  FeaturedProduct({
    required this.fProductName,
    required this.fId,
    required this.fImg,
    required this.fStoreName,
    required this.fCountryName,
    required this.fPrice,
  });
}

List<FeaturedProduct> featuredProduct = [
  FeaturedProduct(
    fProductName: 'Angelica',
    fId: 1,
    fImg: 'assets/images/bottom_img_1.png',
    fStoreName: 'sanuha',
    fCountryName: 'Japan',
    fPrice: 300,
  ),
  FeaturedProduct(
    fProductName: 'Sanura',
    fId: 2,
    fImg: 'assets/images/bottom_img_2.png',
    fStoreName: 'tokata',
    fCountryName: 'Belgium',
    fPrice: 352,
  ),
  FeaturedProduct(
    fProductName: 'Junnara',
    fId: 3,
    fImg: 'assets/images/img.png',
    fStoreName: 'variety',
    fCountryName: 'Bangladesh',
    fPrice: 532,
  ),
];
