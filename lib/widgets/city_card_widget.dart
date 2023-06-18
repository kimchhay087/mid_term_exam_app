import 'package:flutter/material.dart';


class CityCardWidget extends StatelessWidget {
  const CityCardWidget({super.key, this.backgroundColor, required this.image, required this.name});
  final Color? backgroundColor;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:const EdgeInsets.all(8),
          child: ClipOval(
            child: CircleAvatar(
              radius: 50, // Adjust the radius as needed
              backgroundImage: AssetImage(image),
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
