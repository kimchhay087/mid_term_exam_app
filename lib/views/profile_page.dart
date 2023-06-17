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
              Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: ClipOval(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80, // Adjust the radius as needed
                    backgroundImage:
                        AssetImage('lib/assets/images/profile.png'),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Kimmchay Try',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'kimchhay007@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Account Setting',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.edit_note_rounded,
                  color: Colors.orange,
                ),
                title: Text('Edit Profile'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.wallet,
                  color: Colors.green,
                ),
                title: Text('Payment'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.red,
                ),
                title: Text('Notification'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.font_download_outlined,
                  color: Colors.purple,
                ),
                title: Text('Lanuague'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Support',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                title: Text('Message'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.feedback,
                  color: Colors.cyan,
                ),
                title: Text('Give Us Feedback'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.bookmarks,
                  color: Colors.pink,
                ),
                title: Text('Terms of Service'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.question_mark,
                  color: Colors.yellow,
                ),
                title: Text('About'),
                onTap: () {
                  // Navigate to the account settings page
                },
              ),
              SizedBox(height: 4),
              ListTile(
                leading: Icon(
                  Icons.login_outlined,
                  color: Colors.deepOrange,
                ),
                title: Text('Log Out'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/signin');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
