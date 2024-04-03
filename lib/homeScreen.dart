import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image(
                  image: AssetImage('images/courses_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
