import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int indexpage;
  final Function(int) onClock;
  CustomNavigationBar({required this.indexpage, required this.onClock});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Color.fromARGB(255, 30, 81, 104),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.info_outline_rounded,
          color: Colors.white,
        ),
      ],
      onTap: onClock,
    );
  }
}