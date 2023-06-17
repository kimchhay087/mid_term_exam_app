import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/widgets/text_form_field_widget.dart';

import '../widgets/buttom_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create an account",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                "Let's us know what your name, email,",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Text(
                'and you password',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 26),
              TextFormFieldWidget(
                inputBorder: OutlineInputBorder(),
                isPassword: false,
                hintText: 'Enter your full name here',
                labelText: 'Full name',
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Full name is required';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormFieldWidget(
                inputBorder: OutlineInputBorder(),
                isPassword: false,
                hintText: 'Enter your email here',
                labelText: 'Email',
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Email is required';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 16),
              TextFormFieldWidget(
                inputBorder: OutlineInputBorder(),
                isPassword: true,
                hintText: 'Enter your password here',
                labelText: 'Password',
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Password is required';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 26),
              Text(
                "Confirm your email. Standard message and date",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),Text(
                "retes apply.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),

              const SizedBox(height: 16),
              ButtonWidget(backgroundColor:
              MaterialStateProperty.all<Color>(Colors.green),
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/main');
                  },
                  borderColor: Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}