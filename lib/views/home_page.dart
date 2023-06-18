import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/models/explore_model.dart';
import 'package:mid_term_exam_app/services/popular_hotel_service.dart';
import 'package:mid_term_exam_app/widgets/city_card_widget.dart';
import 'package:mid_term_exam_app/widgets/popular_hotel_widget.dart';
import 'package:mid_term_exam_app/widgets/recommend_hotel_card_widget.dart';
import 'package:mid_term_exam_app/widgets/text_form_field_widget.dart';

import '../models/popular_hotel_model.dart';
import '../models/recommend_hotel_model.dart';
import '../services/explore_city_service.dart';
import '../services/recommend_hotel_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final CityService _cityService;
  late final HotelService _hotelService;
  late final PopularHotelService _popularHotelService;

  @override
  void initState() {
    super.initState();
    _cityService = CityService();
    _hotelService = HotelService();
    _popularHotelService = PopularHotelService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: ClipOval(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 80, // Adjust the radius as needed
            backgroundImage:
            AssetImage('lib/assets/images/profile.png'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Kimchhay Try',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            Text(
              "Let's Find Best Hotel",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/notification');
            },
            icon: Icon(
              Icons.notifications_none_sharp,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormFieldWidget(
                fillColor: Colors.green.withOpacity(0.2),
                inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                isPassword: false,
                hintText: 'Search for hotel',
                prefixIcon: Icon(Icons.search),
                borderColor: Colors.transparent,
              ),
              SizedBox(height: 16),
              Text(
                'Explore City',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),
              FutureBuilder<List<City>>(
                future: _cityService.getCities(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: snapshot.data!.map((city) {
                          return CityCardWidget(
                            name: city.name,
                            image: city.image,
                          );
                        }).toList(),
                      ),
                    );
                  } else {
                    return Text('No data available');
                  }
                },
              ),
              SizedBox(height: 16),
              Text(
                'Recommend Hotels',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),
              FutureBuilder<List<Hotel>>(
                future: _hotelService.getHotels(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: snapshot.data!.map((hotel) {
                          return RecommendHotelCard(
                            name: hotel.name,
                            image: hotel.image,
                            distance: hotel.distance,
                            rating: hotel.rating.toString(),
                          );
                        }).toList(),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Hotels',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(onPressed: (){}, child:Text('See more',style: TextStyle(color: Colors.grey),))
                ],
              ),
              SizedBox(height: 16),
              FutureBuilder<List<PopularHotel>>(
                future: _popularHotelService.getPopularHotels(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: snapshot.data!.map((popularHotel) {
                          return PopularHotelCard(
                            image: popularHotel.image,
                            name: popularHotel.name,
                            distance: popularHotel.distance,
                            price: popularHotel.price.toString(),
                            rating: popularHotel.rating.toString(),
                          );
                        }).toList(),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
