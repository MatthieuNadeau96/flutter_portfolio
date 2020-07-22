import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/home_screen.dart';
import 'package:flutter_portfolio/widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.white,
      ),
      home: MainHomeScreen(),
    );
  }
}

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              NavBar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: HomeScreen(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
