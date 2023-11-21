import 'dart:io';
import 'package:flutter/material.dart';
import './homepage.dart'; // Import the HomePage file
import './profile.dart'; // Import the ProfilePage file

class ResultScreen extends StatelessWidget {
  final String imagePath;

  ResultScreen({required this.imagePath});

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
      body: Container(
        color: Color(0xFF332E2E),
        child: Column(
          children: [
            // First Card with Image (Display the received image)
            Card(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(
                      File(imagePath),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Second Card with Text (Keep your existing code here)
            // Second Card with Text
            Card(
              margin: EdgeInsets.all(20.0), // Adjust margin as needed
              child: Container(
                padding: EdgeInsets.all(20.0), // Adjust padding as needed
                width: double.infinity, // Make the card full-width
                child: Column(
                  children: [
                    Text(
                      'Disease: Yellow Spot.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Accuracy: 0.999',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            // Third Card with Text and "Read More" Button (Keep your existing code here)
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Bacterial soft rots tend to be more of a problem during wet weather and can be more severe when plants lack sufficient calcium. Once soft rot bacteria have infected plant tissue, there are no treatments. Immediately remove and discard infected plants or plant parts.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      // Add your "Read More" button action here
                    },
                    child: Text('Read More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
        currentIndex: 1, // Set the initial selected tab to "Results"
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home (HomePage)
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(), // Navigate to HomePage
              ),
            );
          } else if (index == 2) {
            // Navigate to Profile (ProfilePage)
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfilePage(), // Navigate to ProfilePage
              ),
            );
          }
        },
      ),
    );
  }
}
