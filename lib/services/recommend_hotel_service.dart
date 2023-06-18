import '../models/recommend_hotel_model.dart';

final jsonMockData = [
  {
    "image": "lib/assets/images/sokha_hotel_and_resort.jpg",
    "name": "Sokha Hotel and Resort",
    "location": "Phnom Penh, Cambodia",
    "description":
        "Sokha Hotel and Resort is a luxurious 5-star hotel located along the riverside of Phnom Penh. With its stunning views, spacious rooms, and world-class amenities, this hotel offers a perfect blend of comfort and elegance for both business and leisure travelers.",
    "distance": "2 km",
    "rating": 5,
    "rooms": [
      {"type": "Standard Room", "price": 150},
      {"type": "Deluxe Room", "price": 250},
      {"type": "Executive Suite", "price": 400}
    ]
  },
  {
    "image": "lib/assets/images/astor_house_hotel.jpg",
    "name": "Astor House Hotel",
    "location": "Shanghai, China",
    "description":
        "Astor House Hotel is a historic landmark hotel located in the heart of Shanghai. With its rich heritage, classic architecture, and modern comforts, this hotel offers a unique and memorable experience for travelers seeking a blend of tradition and contemporary luxury.",
    "distance": "5 km",
    "rating": 4.2,
    "rooms": [
      {"type": "Superior Room", "price": 180},
      {"type": "Deluxe Room", "price": 280},
      {"type": "Executive Suite", "price": 450}
    ]
  },
  {
    "image": "lib/assets/images/crowne_plaza_hong_kong_kow_loon_wast.jpg",
    "name": "Crowne Plaza Hong Kong Kow Loon East",
    "location": "Hong Kong",
    "description":
        "Crowne Plaza Hong Kong Kow Loon East is a contemporary hotel located in the vibrant city of Hong Kong. With its convenient location, stylish accommodations, and exceptional services, this hotel provides a seamless experience for both business and leisure travelers.",
    "distance": "3 km",
    "rating": 4.7,
    "rooms": [
      {"type": "Superior Room", "price": 200},
      {"type": "Deluxe Room", "price": 300},
      {"type": "Premier Suite", "price": 500}
    ]
  },
  {
    "image": "lib/assets/images/edison.jpg",
    "name": "Edison Hotel",
    "location": "New York City, United States",
    "description":
        "Edison Hotel is a historic hotel situated in the heart of New York City. With its classic Art Deco style, comfortable rooms, and proximity to popular attractions, this hotel offers a convenient and charming stay for visitors exploring the Big Apple.",
    "distance": "7 km",
    "rating": 4.9,
    "rooms": [
      {"type": "Standard Room", "price": 220},
      {"type": "Deluxe Room", "price": 320},
      {"type": "Executive Suite", "price": 550}
    ]
  },
  {
    "image": "lib/assets/images/harris_vertu_hotel.jpg",
    "name": "Harris Vertu Hotel",
    "location": "Jakarta, Indonesia",
    "description":
        "Harris Vertu Hotel is a modern hotel located in the bustling city of Jakarta. With its contemporary design, comfortable accommodations, and excellent amenities, this hotel offers a convenient and stylish stay for both business and leisure travelers.",
    "distance": "1 km",
    "rating": 4.3,
    "rooms": [
      {"type": "Superior Room", "price": 150},
      {"type": "Deluxe Room", "price": 250},
      {"type": "Executive Suite", "price": 400}
    ]
  },
  {
    "image": "lib/assets/images/lalit_mumbai.jpg",
    "name": "Lalit Mumbai",
    "location": "Mumbai, India",
    "description":
        "Lalit Mumbai is a luxury hotel located in the vibrant city of Mumbai. With its elegant accommodations, fine dining options, and impeccable service, this hotel offers a sophisticated and indulgent experience for discerning travelers.",
    "distance": "4 km",
    "rating": 4.6,
    "rooms": [
      {"type": "Deluxe Room", "price": 280},
      {"type": "Club Room", "price": 380},
      {"type": "Executive Suite", "price": 600}
    ]
  },
  {
    "image": "lib/assets/images/palm_boutique_hotel_and_resturant.jpg",
    "name": "Palm Boutique Hotel and Restaurant",
    "location": "Phuket, Thailand",
    "description":
        "Palm Boutique Hotel and Restaurant is a boutique hotel situated in the picturesque island of Phuket.With its charming ambiance, personalized service, and delectable cuisine, this hotel offers a relaxing and delightful stay for travelers seeking a tranquil getaway.",
    "distance": "6 km",
    "rating": 4.8,
    "rooms": [
      {"type": "Superior Room", "price": 180},
      {"type": "Deluxe Room", "price": 280},
      {"type": "Pool Villa", "price": 550}
    ]
  },
  {
    "image": "lib/assets/images/parkroyal_collection_kuala_lumpur.jpg",
    "name": "Park Royal Collection Hotel",
    "location": "Kuala Lumpur, Malaysia",
    "description":
        "Park Royal Collection Hotel is a contemporary hotel located in the heart of Kuala Lumpur. With its stylish accommodations, modern amenities, and convenient access to the city's attractions, this hotel offers a comfortable and memorable stay for travelers visiting the Malaysian capital.",
    "distance": "3 km",
    "rating": 4.4,
    "rooms": [
      {"type": "Superior Room", "price": 190},
      {"type": "Deluxe Room", "price": 290},
      {"type": "Premier Suite", "price": 480}
    ]
  },
  {
    "image": "lib/assets/images/sydney_hotel.jpg",
    "name": "Sydney Hotel",
    "location": "Sydney, Australia",
    "description":
        "Sydney Hotel is a modern hotel situated in the vibrant city of Sydney. With its contemporary design, comfortable rooms, and prime location, this hotel provides a convenient and stylish base for travelers exploring the iconic landmarks, shopping districts, and cultural attractions of Sydney.",
    "distance": "2 km",
    "rating": 4.7,
    "rooms": [
      {"type": "Standard Room", "price": 220},
      {"type": "Deluxe Room", "price": 320},
      {"type": "Executive Suite", "price": 550}
    ]
  },
  {
    "image": "lib/assets/images/the_peninsula_hong_kong.jpg",
    "name": "The Peninsula Hong Kong",
    "location": "Hong Kong",
    "description":
        "The Peninsula Hong Kong is a legendary 5-star hotel located in the heart of Hong Kong. With its grand colonial architecture, luxurious accommodations, and world-class amenities, this hotel offers an unparalleled experience of elegance and sophistication for discerning travelers.",
    "distance": "8 km",
    "rating": 4.9,
    "rooms": [
      {"type": "Deluxe Room", "price": 300},
      {"type": "Grand Deluxe Room", "price": 400},
      {"type": "Executive Suite", "price": 700}
    ]
  }
];

class HotelService {
  Future<List<Hotel>> getHotels() async {
    try {
      // Simulating an asynchronous delay
      await Future.delayed(Duration(seconds: 1));

      List<Hotel> hotels = [];
      for (var hotelData in jsonMockData) {
        hotels.add(Hotel.fromJson(hotelData));
      }
      return hotels;
    } catch (e) {
      throw "Error fetching hotels";
    }
  }
}
