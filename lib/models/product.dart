// ignore_for_file: file_names

class ProductModel {
  final String image, title, description;
  final int price, size, id;

  ProductModel(
      this.id, this.title, this.price, this.size, this.description, this.image);
}

List<ProductModel> products = [
  ProductModel(
      1, "Ayakkabı", 650, 12, dummyText, "assets/images/products/shoes1.jpg"),
  ProductModel(
      2, "Ayakkabı", 650, 12, dummyText, "assets/images/products/shoes1.jpg"),
  ProductModel(
      3, "Ayakkabı", 650, 12, dummyText, "assets/images/products/shoes1.jpg"),
  ProductModel(
      4, "Ayakkabı", 650, 12, dummyText, "assets/images/products/shoes1.jpg"),
  ProductModel(
      5, "Ayakkabı", 650, 12, dummyText, "assets/images/products/shoes1.jpg"),
];

String dummyText = "";
