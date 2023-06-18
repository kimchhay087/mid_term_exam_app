import 'package:flutter/material.dart';

class TripPage extends StatelessWidget {
  const TripPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        title:const Text(
          'Trips',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body:const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.airplanemode_active_rounded,
                size: 64,
                color: Colors.grey,
              ),
              SizedBox(height: 16),
              Text(
                'No Trip',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}