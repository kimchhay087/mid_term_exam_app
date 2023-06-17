import '../models/explore_model.dart';
final jsonMockData = [
  {
    "name": "Nearby",
    "image": "lib/assets/images/location.png"
  },
  {
    "name": "Dubai",
    "image": "lib/assets/images/dubai.jpg"
  },
  {
    "name": "Angkor Wat",
    "image": "lib/assets/images/angkor_wat.jpg"
  },
  {
    "name": "New York",
    "image": "lib/assets/images/new_york.jpg"
  },
  {
    "name": "Hong Kong",
    "image": "lib/assets/images/hong_kong.jpg"
  },
  {
    "name": "Jakarta",
    "image": "lib/assets/images/jakarta.jpg"
  },
  {
    "name": "Mumbai",
    "image": "lib/assets/images/mumbai.jpg"
  },
  {
    "name": "Sydney",
    "image": "lib/assets/images/sydney.jpg"
  },
  {
    "name": "Kuala Lumpur",
    "image": "lib/assets/images/kuala_lumpurc.jpg"
  },
  {
    "name": "Shang Hai",
    "image": "lib/assets/images/shanghai.jpg"
  }
];



class CityService {
  Future<List<City>> getCities() async {
    try {
      // Simulating an asynchronous delay
      await Future.delayed(Duration(seconds: 1));

      List<City> cities = [];
      for (var cityData in jsonMockData) {
        cities.add(City.fromJson(cityData));
      }
      return cities;
    } catch (e) {
      throw "Error fetching cities";
    }
  }
}