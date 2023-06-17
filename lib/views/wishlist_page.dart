import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text('WishList Page',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
    );
  }
}
