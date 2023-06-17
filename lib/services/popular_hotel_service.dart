import '../models/popular_hotel_model.dart';

final jsonMockData = [
  {
    "name": "Cambodia Tian Ti International Hotel",
    "image": "lib/assets/images/cambodia_tian_ti_international_hotel.jpg",
    "distance": "2 km",
    "price": 290,
    "rating": 4.9
  },
  {
    "name": "Hong Kong Ocean Park Marriott Hotel",
    "image": "lib/assets/images/hong_kong_ocean_park_marriott_hotel.jpg",
    "distance": "5 km",
    "price": 250,
    "rating": 4.8
  },
  {
    "name": "JW Marriott Mumbai",
    "image": "lib/assets/images/jw_marriott_mumbai_sahar.jpg",
    "distance": "5 km",
    "price": 180,
    "rating": 4.8
  },
  {
    "name": "WarWick New York",
    "image": "lib/assets/images/warwick_new_york.jpg",
    "distance": "5 km",
    "price": 300,
    "rating": 5
  },
];

class PopularHotelService {
  Future<List<PopularHotel>> getPopularHotels() async {
    try {
      // Simulating an asynchronous delay
      await Future.delayed(Duration(seconds: 2));

      List<PopularHotel> hotels = [];
      for (var hotelData in jsonMockData) {
        hotels.add(PopularHotel.fromJson(hotelData));
      }
      return hotels;
    } catch (e) {
      throw "Error fetching hotels";
    }
  }
}
