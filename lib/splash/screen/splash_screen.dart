import 'package:flutter/material.dart';
import 'package:mark_six/home/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Splash Screen')));
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
  }
}
