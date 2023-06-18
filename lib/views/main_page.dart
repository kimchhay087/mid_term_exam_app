import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/views/booking_page.dart';
import 'package:mid_term_exam_app/views/home_page.dart';
import 'package:mid_term_exam_app/views/profile_page.dart';
import 'package:mid_term_exam_app/views/trip_page.dart';
import 'package:mid_term_exam_app/views/wishlist_page.dart';

import '../widgets/buttom_navigationbar_widget.dart'; // Import the custom widget file

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const HomePage(),
          const WishListPage(),
          const TripPage(),
          const BookingPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            CustomNavigationBarItem(
              icon:const Icon(Icons.home),
              label: 'Home',
            ),
            CustomNavigationBarItem(
              icon:const Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            CustomNavigationBarItem(
              icon:const Icon(Icons.location_city),
              label: 'Trips',
            ),
            CustomNavigationBarItem(
              icon:const Icon(Icons.book_online),
              label: 'Booking',
            ),
            CustomNavigationBarItem(
              icon:const Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (bottomItemIndex) {
            setState(() {
              _currentIndex = bottomItemIndex;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}