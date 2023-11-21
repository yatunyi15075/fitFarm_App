// welcome page with man

import 'package:flutter/material.dart';
import './first.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Image.asset(
            'assets/man.jpg', // Replace with your background image asset path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Text and Elevated button on top of the image
          Positioned(
            bottom: 0, // Position at the bottom
            left: 0, // Align to the left edge
            right: 0, // Align to the right edge
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Detect plant disease and take action by using our fitFarm app for free .",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0), // Add bottom padding here
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button's onPressed action here
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return FirstAppPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold, // Make the text bold
                        fontSize: 20.0,
                      ),
                    ), // Button label
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color(0xFFEF3939), // Background color of the button
                      elevation: 6.0, // Elevation of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      minimumSize: Size(300, 60),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Logo and "fitfarm" text at the top
          Positioned(
            top: 20, // Position at the top
            left: 16, // Align to the left edge
            right: 16, // Align to the right edge
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
        ],
      ),
    );
  }
}
