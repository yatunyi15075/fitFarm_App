import 'package:flutter/material.dart';
import './homepage.dart'; // Import the home page file
import './result.dart'; // Import the result file
import './first.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF332E2E),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
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
                  'assets/logo.jfif',
                  width: 30.0,
                  height: 30.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 8),
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
        color: Color(0xFF332E2E), // Set the background color here
        child: ProfileContent(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF332E2E),
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
        currentIndex: 2,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => FirstAppPage(), // Navigate to the home page
            ));
          } else if (index == 1) {
            // Navigate to Results
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => ResultScreen(
                imagePath: '', // Pass any required data to ResultScreen
              ),
            ));
          }
        },
      ),
    );
  }
}

// ... ProfileContent class and main function remain the same ...

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your existing profile content goes here
    return Column(
      children: [
        // ... your profile content ...

        // Profile Photo, Email, and Username
        SizedBox(
          height: 20.0,
        ),
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('assets/1.jpg'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Yatunyi Brian',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'yatunyi@gmail.com',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),

        // Edit Profile Section
        ListTile(
          leading: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            // Navigate to the Edit Profile page
          },
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),

        // Database Section
        ListTile(
          leading: Icon(
            Icons.history,
            color: Colors.white,
          ),
          title: Text(
            'History',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            // Navigate to the Database page
          },
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),

        // Customer Support Section
        ListTile(
          leading: Icon(
            Icons.headset_mic,
            color: Colors.white,
          ),
          title: Text(
            'Customer Support',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            // Navigate to the Customer Support page
          },
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),

        // Get Help Section
        ListTile(
          leading: Icon(
            Icons.help,
            color: Colors.white,
          ),
          title: Text(
            'Get Help',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            // Navigate to the Get Help page
          },
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),

        // Customer Support Section
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          title: Text(
            'Sign Out',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            // Navigate to the Customer Support page
          },
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}






// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF332E2E), // Background color of the app bar
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.white, // Set the arrow color to white
//           ),
//           onPressed: () {
//             // Handle back button press here
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Row(
//           children: [
//             Container(
//               padding: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//               ),
//               child: ClipOval(
//                 child: Image.asset(
//                   'assets/logo.jfif', // Replace with your logo's asset path
//                   width: 30.0, // Adjust the logo's width
//                   height: 30.0, // Adjust the logo's height
//                   fit: BoxFit.cover, // Adjust the fit type as needed
//                 ),
//               ),
//             ),
//             SizedBox(width: 8), // Add spacing between the logo and text
//             Text(
//               "fitFarm",
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           // Profile Photo, Email, and Username
//           SizedBox(
//             height: 20.0,
//           ),
//           const CircleAvatar(
//             radius: 50.0,
//             backgroundImage: AssetImage('assets/1.jpg'),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Text(
//             'Yatunyi Brian',
//             style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'yatunyi@gmail.com',
//             style: TextStyle(fontSize: 16.0),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 1.0,
//           ),

//           // Edit Profile Section
//           ListTile(
//             leading: Icon(Icons.edit),
//             title: Text('Edit Profile'),
//             onTap: () {
//               // Navigate to the Edit Profile page
//             },
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 1.0,
//           ),

//           // Database Section
//           ListTile(
//             leading: Icon(Icons.history),
//             title: Text('History'),
//             onTap: () {
//               // Navigate to the Database page
//             },
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 1.0,
//           ),

//           // Customer Support Section
//           ListTile(
//             leading: Icon(Icons.headset_mic),
//             title: Text('Customer Support'),
//             onTap: () {
//               // Navigate to the Customer Support page
//             },
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 1.0,
//           ),

//           // Get Help Section
//           ListTile(
//             leading: Icon(Icons.help),
//             title: Text('Get Help'),
//             onTap: () {
//               // Navigate to the Get Help page
//             },
//           ),
//           Divider(
//             color: Colors.grey,
//             thickness: 1.0,
//           ),

//           // Customer Support Section
//           ListTile(
//             leading: Icon(Icons.exit_to_app),
//             title: Text('Sign Out'),
//             onTap: () {
//               // Navigate to the Customer Support page
//             },
//           ),
//         ],
//       ),
      
//     );
//   }
// }
