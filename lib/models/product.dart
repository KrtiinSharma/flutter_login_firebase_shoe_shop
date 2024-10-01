class Product {
  String name;
  String brand;
  num price;
  String category;
  int reviews;
  double rating;
  String description;
  String image;

  Product({
    required this.name,
    required this.brand,
    required this.price,
    required this.category,
    required this.reviews,
    required this.rating,
    required this.description,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      brand: json['brand'],
      price: json['price'],
      category: json['category'],
      reviews: json['reviews'],
      rating: json['rating'],
      description: json['description'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'brand': brand,
      'price': price,
      'category': category,
      'reviews': reviews,
      'rating': rating,
      'description': description,
      'image': image,
    };
  }
}
