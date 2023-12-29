import 'package:flutter/material.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:safetyapps/component/drawer.dart';
import 'package:safetyapps/component/navigationbar.dart';
import 'package:safetyapps/screen/profile.dart';
import 'package:safetyapps/screen/signin_screen.dart';
import 'package:safetyapps/screen/signup_screen.dart';
import 'package:safetyapps/views/home_screen.dart';
import 'package:safetyapps/screen/info_screen.dart';
import 'package:safetyapps/screen/training_screen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexPage = 0;
  List<Widget> _pages = [
    HomeScreen(),
    InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(),
      drawer: DrawerCustom(),
      body: _pages[_indexPage],
      bottomNavigationBar: CustomNavigationBar(
        indexpage: _indexPage,
        onClock: (index) {
          setState(() {
            _indexPage = index;
          });
        },
      ),
    );
  }
}