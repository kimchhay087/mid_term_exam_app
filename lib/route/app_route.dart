import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/views/booking_page.dart';
import 'package:mid_term_exam_app/views/forget_password_page.dart';
import 'package:mid_term_exam_app/views/home_page.dart';
import 'package:mid_term_exam_app/views/main_page.dart';
import 'package:mid_term_exam_app/views/notification_page.dart';
import 'package:mid_term_exam_app/views/profile_page.dart';
import 'package:mid_term_exam_app/views/sign_in_page.dart';
import 'package:mid_term_exam_app/views/sign_up_page.dart';
import 'package:mid_term_exam_app/views/splash_page.dart';
import 'package:mid_term_exam_app/views/trip_page.dart';
import 'package:mid_term_exam_app/views/wishlist_page.dart';
import '../views/welcome_page.dart';

Route<dynamic> appRoute(settings){
  switch(settings.name){
    case '/':
      return MaterialPageRoute(builder: (context)=> SplashPage());
    case '/welcome':
      return MaterialPageRoute(builder: (context)=> WelcomePage());
    case '/main':
      return MaterialPageRoute(builder: (context)=> MainPage());
    case '/signup':
      return MaterialPageRoute(builder: (context)=> SignUpPage());
    case '/signin':
      return MaterialPageRoute(builder: (context)=> SignInPage());
    case '/home':
      return MaterialPageRoute(builder: (context)=> HomePage());
    case '/wishlist':
      return MaterialPageRoute(builder: (context)=> WishListPage());
    case '/forgetpassword':
      return MaterialPageRoute(builder: (context)=> ForgetPasswordPage());
    case '/trip':
      return MaterialPageRoute(builder: (context)=> TripPage());
    case '/notification':
      return MaterialPageRoute(builder: (context)=> NotificationPage());
    case '/booking':
      return MaterialPageRoute(builder: (context)=> BookingPage());
    case '/profile':
      return MaterialPageRoute(builder: (context)=> ProfilePage());
    default:
      return MaterialPageRoute(builder: (context)=> SplashPage());
  }
}