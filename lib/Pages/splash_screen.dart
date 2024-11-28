import 'package:flutter/material.dart';

import 'bluetooth_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(), // Replace with your app's home screen
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulate some initialization work
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to your app's main screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const BluetoothHomeScreen(),
      ));
    });

    // Splash screen UI
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
         Align(
          alignment: Alignment.center,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/logo.png')),
           Text('Welcome To',style: TextStyle(fontSize: 28,color: Colors.orange[400],fontWeight: FontWeight.bold),),
           const Text('RoboDelivr',style: TextStyle(fontSize: 38,color: Colors.blue,fontWeight: FontWeight.bold),),
            ],
                 ),
         ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Your app's main screen UI
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/logo.png')),
            const Text('ROBODELIVR'),
          ],
        ),
      ),
    );
  }
}
