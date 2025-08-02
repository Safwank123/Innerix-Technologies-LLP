
import 'package:flutter/material.dart';
import 'package:innerix_technologies_llp_assesment/widgets/onbording.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              OnboardingPage(
                image: 'assets/Illustration.png',
                title: 'Welcome to ecom',
                description: 'Lorem ipsum is simply dummy text of the printing and typesetting !',
              ),
              OnboardingPage(
                image: 'assets/Illustration.png',
                title: 'Lorem Ipsum is simply dummy text of the printing !',
                description: 'Lorem ipsum is simply dummy text of the printing and typesetting !',
              ),
              OnboardingPage(
                image: 'assets/Illustration.png',
                title: 'It is a long established fact that a reader will !',
                description: 'Lorem ipsum is simply dummy text of the printing and typesetting !',
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => buildDot(index)),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Skip',style: TextStyle(color: Colors.grey),),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: TextButton(
              onPressed: () {
                if (_currentPage < 2) {
                  _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                } else {
                  Navigator.pushReplacementNamed(context, '/login');
                }
              },
              child: Text(_currentPage < 2 ? 'Next' : 'Get Started',style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: _currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}


