//welcome page with lady

import 'package:flutter/material.dart';
import './welcome.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToWelcomePage() {
    // Navigate to the "welcome.dart" page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Image.asset(
            'assets/lady.jfif', // Replace with your background image asset path
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
                    "Protect and identify plants and environment around you by using fitFarm App",
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
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Add your button's onPressed action here
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const WelcomePage();
                          },
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.black, // Text color (black)
                        fontWeight: FontWeight.bold, // Bold text
                        fontSize: 18.0, // Font size 18 pixels
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFEF3939), // Background color (#EF3939)
                      elevation: 6.0, // Elevation of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      minimumSize: Size(100, 50),
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
