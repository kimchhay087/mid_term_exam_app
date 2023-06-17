import 'package:flutter/material.dart';

class RecommendHotelCard extends StatelessWidget {
  const RecommendHotelCard(
      {super.key,
      required this.image,
      required this.name,
      required this.distance,
      required this.rating});

  final String image;
  final String name;
  final String distance;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
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
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pin_drop_sharp,color: Colors.red,),
                            Text(
                              distance,
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              rating,
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            Icon(Icons.star,
                              color: Colors.amber,)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
