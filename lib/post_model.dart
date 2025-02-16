class Product {
  final int id;
  final String name;
  final String? description;
  final String price;
  final int stock;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
  });

factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] ?? '',
       price: json['price'].toString(), 
      stock: json['stock'] as int,
    );
  }
}