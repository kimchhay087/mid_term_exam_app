import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 60),
            Text('Welcome Mann Hotel',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
            Text('Version 1.0.0',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
