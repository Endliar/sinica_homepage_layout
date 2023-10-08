class Card {
  final int id;
  final String title;
  final String images;

  Card({required this.id, required this.title, required this.images});
}

List<Card> demoCard = [
  Card(id: 1, title: "Смотрите, что мы для вас подобрали!", images: "assets/images/recommendations.png"),
  Card(id: 2, title: "Может, повторим?", images: "assets/images/repeat_order.png"),
  Card(id: 3, title: "Часто покупают", images: "assets/images/often_buy.png")
];