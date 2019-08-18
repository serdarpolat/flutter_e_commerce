class Product {
  String title;

  Product(this.title);

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }
}