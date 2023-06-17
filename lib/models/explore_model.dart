class City {
  final String name;
  final String image;

  City({
    required this.name,
    required this.image,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json['name'],
      image: json['image'],
    );
  }
}