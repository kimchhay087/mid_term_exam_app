import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text('Booking Page',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
    );
  }
}
