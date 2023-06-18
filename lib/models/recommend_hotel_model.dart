class Hotel {
  final String image;
  final String name;
  final String location;
  final String description;
  final String distance;
  final double rating;
  final List<Room> rooms;

  Hotel({
    required this.image,
    required this.name,
    required this.location,
    required this.description,
    required this.distance,
    required this.rating,
    required this.rooms,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> roomDataList = json['rooms'];
    final List<Room> roomList = roomDataList.map((roomData) => Room.fromJson(roomData)).toList();

    return Hotel(
      image: json['image'],
      name: json['name'],
      location: json['location'],
      description: json['description'],
      distance: json['distance'],
      rating: json['rating'].toDouble(),
      rooms: roomList,
    );
  }
}

class Room {
  final String type;
  final double price;

  Room({
    required this.type,
    required this.price,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      type: json['type'],
      price: json['price'].toDouble(),
    );
  }
}