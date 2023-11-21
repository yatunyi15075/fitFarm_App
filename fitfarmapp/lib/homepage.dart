// what you can do(upload/ take photo) section

import 'dart:io';
// main.dart (First Code)

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import './result.dart';
import './profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF332E2E),
      body: Column(
        children: [
          // First Part

          Card(
            elevation: 4.0,
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text('Hello There!'),
                  SizedBox(height: 5),
                  Text(
                    'What You Can Do!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                      '●Diagnose infected plants by taking a photo and getting results from our app for free'),
                  SizedBox(height: 5),
                  Text(
                      '●Take quick action by the recommendations given by our app'),
                  SizedBox(height: 5),
                  Text('●Use zero to no money in treating your plants'),
                ],
              ),
            ),
          ),

          // Second Part (Image)
          Card(
            elevation: 4.0,
            margin: EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 150.0,
              child: Image.asset(
                'assets/Take photo1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Third Part (Button for taking/uploading photo)
          Container(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton.icon(
              onPressed: () async {
                // Add code to open the camera and take a photo
                final imagePicker = ImagePicker();
                final XFile? image = await imagePicker.pickImage(
                  source: ImageSource.camera,
                );

                if (image != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ResultScreen(imagePath: image.path);
                      },
                    ),
                  );
                }
              },
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              label: const Text(
                'Upload / Take photo',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0, // Set the initial tab index
      //   onTap: (int index) {
      //     if (index == 2) {
      //       // Navigate to the ProfilePage when the person icon is pressed
      //       Navigator.of(context).push(
      //         MaterialPageRoute(
      //           builder: (BuildContext context) {
      //             return ProfilePage();
      //           },
      //         ),
      //       );
      //     } else {
      //       // Navigate to the result screen when the person icon is pressed
      //       Navigator.of(context).push(
      //         MaterialPageRoute(
      //           builder: (BuildContext context) {
      //             return ResultScreen(
      //               imagePath: '',
      //             );
      //           },
      //         ),
      //       );
      //     }
      //   },

      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list),
      //       label: 'Results',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
    );
    //);
  }
}

// Create a Results Screen where the selected/taken image will be displayed
// class ResultsScreen extends StatelessWidget {
//   final String imagePath;

//   ResultsScreen({required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Results Screen'),
//       ),
//       body: Center(
//         child: Image.file(
//           File(imagePath), // Display the selected/taken image
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
