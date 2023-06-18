import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: ClipOval(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80, // Adjust the radius as needed
                    backgroundImage:
                        AssetImage('lib/assets/images/profile.png'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Kimmchay Try',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              const Center(
                child: Text(
                  'kimchhay007@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Account Setting',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.edit_note_rounded,
                  color: Colors.orange,
                ),
                title:const Text('Edit Profile'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.wallet,
                  color: Colors.green,
                ),
                title:const Text('Payment'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.notifications,
                  color: Colors.red,
                ),
                title:const Text('Notification'),
                onTap: () {
                  Navigator.of(context).pushNamed('/notification');
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.font_download_outlined,
                  color: Colors.purple,
                ),
                title:const Text('Lanuague'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Support',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                title:const Text('Message'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.feedback,
                  color: Colors.cyan,
                ),
                title:const Text('Give Us Feedback'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.bookmarks,
                  color: Colors.pink,
                ),
                title:const Text('Terms of Service'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.question_mark,
                  color: Colors.yellow,
                ),
                title:const Text('About'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              const SizedBox(height: 4),
              ListTile(
                leading:const Icon(
                  Icons.login_outlined,
                  color: Colors.deepOrange,
                ),
                title:const Text('Log Out'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/signin');
                },
              ),
              const SizedBox(height: 16),
              Container(
                  padding:const EdgeInsets.symmetric(horizontal: 16),
                  child:const Text('Version 1.0.0')),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
