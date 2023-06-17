import '../models/recommend_hotel_model.dart';

final jsonMockData = [
  {
    "image": "lib/assets/images/sokha_hotel_and_resort.jpg",
    "name": "Sokha Hotel and Resort",
    "distance": "2 km",
    "rating": 4.5
  },
  {
    "image": "lib/assets/images/astor_house_hotel.jpg",
    "name": "Astor House Hotel",
    "distance": "5 km",
    "rating": 4.2
  },
  {
    "image": "lib/assets/images/crowne_plaza_hong_kong_kow_loon_wast.jpg",
    "name": "Crowne Plaza Hong Kong Kow Loon East",
    "distance": "3 km",
    "rating": 4.7
  },
  {
    "image": "lib/assets/images/edison.jpg",
    "name": "Edison Hotel",
    "distance": "7 km",
    "rating": 4.9
  },
  {
    "image": "lib/assets/images/harris_vertu_hotel.jpg",
    "name": "Horris Vertu Hotel",
    "distance": "1 km",
    "rating": 4.3
  },
  {
    "image": "lib/assets/images/lalit_mumbai.jpg",
    "name": "Lalit Mumbai",
    "distance": "4 km",
    "rating": 4.6
  },
  {
    "image": "lib/assets/images/palm_boutique_hotel_and_resturant.jpg",
    "name": "Palm Boutique Hotel and Restaurant",
    "distance": "6 km",
    "rating": 4.8
  },
  {
    "image": "lib/assets/images/parkroyal_collection_kuala_lumpur.jpg",
    "name": "Park Royal Collection Hotel",
    "distance": "3 km",
    "rating": 4.4
  },
  {
    "image": "lib/assets/images/sydney_hotel.jpg",
    "name": "Sydney Hotel",
    "distance": "2 km",
    "rating": 4.7
  },
  {
    "image": "lib/assets/images/the_peninsula_hong_kong.jpg",
    "name": "The Peninsula Hong Kong",
    "distance": "8 km",
    "rating": 4.9
  }
];



class HotelService {
  Future<List<Hotel>> getHotels() async {
    try {
      // Simulating an asynchronous delay
      await Future.delayed(Duration(seconds: 2));

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

