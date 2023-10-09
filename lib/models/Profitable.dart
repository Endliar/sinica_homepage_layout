class Profitable {
  final int id;
  final String title;
  final String properties;
  final String images;
  final int discount;
  final int oldPrice;
  final int price;

  Profitable(
      {required this.id,
      required this.title,
      required this.properties,
      required this.price,
      required this.images,
      required this.discount,
      required this.oldPrice});
}

List<Profitable> profitableCard = [
  Profitable(
      id: 1,
      title: "Вино\nCuvee d’Or",
      properties: "750 мл, 10-12%",
      price: 504,
      images: "assets/images/wine.png",
      discount: -20,
      oldPrice: 789),
  Profitable(
      id: 1,
      title: "Вино\nCuvee d’Or",
      properties: "750 мл, 10-12%",
      price: 504,
      images: "assets/images/wine.png",
      discount: -20,
      oldPrice: 789),
];
