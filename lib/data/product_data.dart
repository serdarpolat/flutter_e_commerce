class Product {
  String id;
  String title;
  String brand;
  String image;
  String price;

  Product(this.id, this.title, this.brand, this.image, this.price);

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    brand = json['brand'];
    image = json['image'];
    price = json['price'];
  }
}