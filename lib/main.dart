import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/screens/about_screen.dart';
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
          textTheme: TextTheme(
            headline3: TextStyle(
              fontSize: 34,
              color: Colors.grey[800],
            ),
            headline4: TextStyle(
              fontSize: 24,
              color: Colors.grey[600],
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              color: Colors.grey[500], //#868786
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.grey[600],
          )),
      home: MainHomeScreen(),
    );
  }
}

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: BlocProvider<NavigationBloc>(
            create: (context) => NavigationBloc(HomeScreen()),
            child: Row(
              children: [
                NavBar(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: BlocBuilder<NavigationBloc, NavigationStates>(
                      builder: (context, navigationState) {
                        return navigationState as Widget;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
