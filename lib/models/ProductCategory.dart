class ProductCategory {
  final int id;
  final String title;
  final String images;

  ProductCategory(
      {required this.id, required this.title, required this.images});
}

List<ProductCategory> category = [
  ProductCategory(
      id: 1, title: "Крепкий\nалкоголь", images: "assets/images/drink.png"),
  ProductCategory(
      id: 2, title: "Еда и закуски", images: "assets/images/snacks.png"),
  ProductCategory(
      id: 3, title: "Пиво и сидр", images: "assets/images/other_drink.png"),
  ProductCategory(
      id: 4, title: "Безалкогольные\nнапитки", images: "assets/images/cola.png"),
  ProductCategory(
      id: 5, title: "Сигареты и стики", images: "assets/images/cigarettes.png"),
  ProductCategory(
      id: 6,
      title: "Электронные сигареты",
      images: "assets/images/electronic_cigarettes.png"),
  ProductCategory(
      id: 7, title: "Всё для праздника", images: "assets/images/holiday.png"),
  ProductCategory(
      id: 8, title: "Аптека и\nгигиена", images: "assets/images/hygiene.png"),
];
