import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/widgets/buttom_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Let's get started ",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                'Login to your acc below or signup',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                'for an amazing experience',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 80),
              ButtonWidget(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  title: 'Sign up with mobile',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  borderColor: Colors.green),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signin');
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.green),
                      )),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
