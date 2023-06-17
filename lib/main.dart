import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/route/app_route.dart';

void main(){
  runApp(RootApp());
}


class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRoute,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}