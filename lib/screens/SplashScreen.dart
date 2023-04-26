// Splash Screen will be shown when the app is opened for the first time

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // This is the splash screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/task-detals');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            // Screen which will have all the task listed in the app
            Text('Task List App', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text('Loading...', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
