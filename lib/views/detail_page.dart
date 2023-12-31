import 'package:flutter/material.dart';

import '../models/recommend_hotel_model.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String name;
  final String distance;
  final String rating;
  final String description;
  final List<Room> rooms;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    required this.distance,
    required this.rating,
    required this.description,
    required this.rooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          name,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding:const  EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding:const  EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.topLeft,
              child: Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 8),
            Expanded(
              flex: 3,
              child: Container(
                padding:const  EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description: $description',style:const TextStyle(fontWeight: FontWeight.w400),),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.pin_drop_sharp,
                          color: Colors.red,
                        ),
                        Text('Distance: $distance'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text('Rating: $rating'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Room Types',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.house_sharp,color: Colors.blue,)
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: rooms.length,
                      itemBuilder: (context, index) {
                        final room = rooms[index];
                        return ListTile(
                          title: Text(room.type),
                          subtitle: Text('\$${room.price.toStringAsFixed(2)}'),
                        );
                      },
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