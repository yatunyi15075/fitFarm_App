import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(
          title: 'Home',
        ),
      ),
    );
  }

  final Color customBackgroundColor = Color(0xF5332E2E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          customBackgroundColor, // Set your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100.0, // Adjust the size of the circular logo
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12, // Set the circle's background color
              ),
              child: Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/logo.jfif', // Replace with your logo's asset path
                    width: 100.0, // Adjust the logo's width
                    height: 100.0, // Adjust the logo's height
                    fit: BoxFit.cover, // Adjust the fit type as needed
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 16.0), // Adjust the spacing between the logo and text
            Text(
              "fitFarm",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set the text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
