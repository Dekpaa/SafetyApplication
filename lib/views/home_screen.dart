import 'package:flutter/material.dart';
import 'package:safetyapps/Controller/c_home.dart';
import 'package:safetyapps/Model/model.dart';
import 'package:safetyapps/component/card_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerHome.dataLength,
        itemBuilder: (context, index) {
          ModelHome edu = ControllerHome.dataHome.elementAt(index);
          return CardHome(
            data: edu,
            title: edu.title,
            screen:edu.page,
          );
        },
      ),
    );
  }
}