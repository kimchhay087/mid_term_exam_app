class PopularHotel {
  final String name;
  final String image;
  final String distance;
  final int price;
  final double rating;

  PopularHotel({
    required this.name,
    required this.image,
    required this.distance,
    required this.price,
    required this.rating,
  });

  factory PopularHotel.fromJson(Map<String, dynamic> json) {
    return PopularHotel(
      name: json['name'],
      image: json['image'],
      distance: json['distance'],
      price: json['price'],
      rating: json['rating'].toDouble(),
    );
  }
}