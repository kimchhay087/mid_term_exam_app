import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String name;
  final String distance;
  final String rating;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    required this.distance,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(name,style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Distance: $distance'),
            SizedBox(height: 8),
            Text('Rating: $rating'),
          ],
        ),
      ),
    );
  }
}