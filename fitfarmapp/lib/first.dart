import 'package:flutter/material.dart';
import './result.dart';
import './profile.dart';
import './homepage.dart';

class FirstAppPage extends StatefulWidget {
  FirstAppPage({Key? key}) : super(key: key);

  @override
  State<FirstAppPage> createState() => _FirstAppPageState();
}

class _FirstAppPageState extends State<FirstAppPage> {
  int _selectedIndex = 0; // For tracking the selected tab

  // List of pages to be displayed in the body
  final List<Widget> _pages = [
    HomePage(),
    ResultScreen(
      imagePath: '',
    ),
    ProfilePage(), // Use ProfilePage here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF332E2E), // Background color of the app bar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white, // Set the arrow color to white
          ),
          onPressed: () {
            // Handle back button press here
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/logo.jfif', // Replace with your logo's asset path
                  width: 30.0, // Adjust the logo's width
                  height: 30.0, // Adjust the logo's height
                  fit: BoxFit.cover, // Adjust the fit type as needed
                ),
              ),
            ),
            SizedBox(width: 8), // Add spacing between the logo and text
            Text(
              "fitFarm",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Display the selected page in the body
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Color(0xFF332E2E), // Background color of the bottom navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        onTap: (index) {
          if (index == 1) {
            // Check if the "Results" tab is pressed
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ResultScreen(
                imagePath: '',
              ),
            ));
          } else if (index == 2) {
            // Check if the "Profile" tab is pressed
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ));
          } else if (index == 3) {
            // Check if the "Profile" tab is pressed
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
          } else {
            setState(() {
              _selectedIndex = index; // Update the selected tab
            });
          }
        },
      ),
    );
  }
}
