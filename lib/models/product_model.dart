class ProductModel {
  final int id;
  final int category_id;
  final String title;
  final String image;
  final String description;
  final int price;

  ProductModel(this.id, this.category_id, this.title, this.image,
      this.description, this.price);
}

class CategoryModel {
  final int id;
  final String title;
  final String image;

  CategoryModel(this.id, this.title, this.image);
}

class Items {
  static ProductModel item1 = ProductModel(
    1,
    15,
    "Maiores voluptas",
    "https://picsum.photos/640/480?random=993",
    "Molestiae beatae sit odio non enim qui. Ut dolor architecto quis excepturi id. Vel amet explicabo eos ex alias. Eius id qui omnis. Repellendus commodi quis quaerat distinctio qui enim ipsa autem.",
    915,
  );
}
