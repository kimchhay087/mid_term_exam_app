import 'package:flutter/material.dart';
import 'package:mid_term_exam_app/widgets/text_form_field_widget.dart';

import '../widgets/buttom_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
          icon:const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sign In with your email and',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const Text(
                'password',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 26),
              TextFormFieldWidget(
                inputBorder:const OutlineInputBorder(),
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
                inputBorder:const OutlineInputBorder(),
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
              const SizedBox(height: 16),
              ButtonWidget(backgroundColor:
              MaterialStateProperty.all<Color>(Colors.green),
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/main');
                  },
                  borderColor: Colors.green),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/forgetpassword');
                    },
                    child:const Text(
                      'Forget password',
                      style: TextStyle(color: Colors.grey,fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

