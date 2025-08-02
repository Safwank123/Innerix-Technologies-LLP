import 'package:flutter/material.dart';
import 'package:innerix_technologies_llp_assesment/screens/home_screen.dart';
import 'package:innerix_technologies_llp_assesment/screens/login_screen.dart';
import 'package:innerix_technologies_llp_assesment/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}