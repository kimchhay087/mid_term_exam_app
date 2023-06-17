class Hotel {
  final String image;
  final String name;
  final String distance;
  final double rating;

  Hotel({
    required this.image,
    required this.name,
    required this.distance,
    required this.rating,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      image: json['image'],
      name: json['name'],
      distance: json['distance'],
      rating: json['rating'].toDouble(),
    );
  }
}