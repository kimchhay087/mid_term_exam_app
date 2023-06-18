import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/models/recommend_hotel_model.dart';

import '../views/detail_page.dart';

class RecommendHotelCard extends StatelessWidget {
  const RecommendHotelCard({
    Key? key,
    required this.image,
    required this.name,
    required this.distance,
    required this.rating,
    required this.description,
    required this.rooms,
  }) : super(key: key);

  final String image;
  final String name;
  final String distance;
  final String rating;
  final String description;
  final List<Room> rooms;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              image: image,
              name: name,
              distance: distance,
              rating: rating,
              description: description,
              rooms: rooms,
            ),
          ),
        );
      },
      child: Container(
        height: 300,
        width: 330,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      right: 0.8,
                      top: 0.8,
                      child: IconButton(
                        hoverColor: Colors.red,
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style:const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_sharp,
                                color: Colors.red,
                              ),
                              Text(
                                distance,
                                style:const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                rating,
                                style:const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
