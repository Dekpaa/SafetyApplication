import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/views/ppe_body.dart';
import 'package:safetyapps/views/ppe_ear.dart';
import 'package:safetyapps/views/ppe_eye.dart';
import 'package:safetyapps/views/ppe_face.dart';
import 'package:safetyapps/views/ppe_foot.dart';
import 'package:safetyapps/views/ppe_hand.dart';
import 'package:safetyapps/views/ppe_head.dart';
import 'package:safetyapps/views/ppe_respiratory.dart';

import '/Component/appBar.dart';

class ppeScreen extends StatefulWidget {
  @override
  _ppeScreen createState() => _ppeScreen();
}

class _ppeScreen extends State<ppeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title: 'Personal Protection Equipment'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Personal Protective Equipment (PPE) is equipment worn to minimize exposure to hazards that cause serious workplace injuries and illnesses. PPE can be categorized into eight basis types:',
                textAlign: TextAlign.justify,
                  style: GoogleFonts.inriaSans(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                  cardItem(context, HeadScreen(), 'HEAD\nPROTECTION', Icons.face,
                      Color.fromARGB(255, 40, 116, 178)),
                  cardItem(context, EyeScreen(), 'EYE\nPROTECTION', Icons.remove_red_eye,
                      Color.fromARGB(255, 35, 130, 121)),
                  cardItem(context, FaceScreen(), 'FACE\nPROTECTION',Icons.face_6_outlined,
                      Color.fromARGB(255, 133, 99, 165)),
                  cardItem(context, EarScreen(), 'HEARING\nPROTECTION',Icons.hearing,
                      const Color.fromARGB(255, 149, 89, 89)),
                  cardItem(context, RespiratoryScreen(), 'RESPIRATORY\nPROTECTION',Icons.masks,
                      Color.fromARGB(255, 232, 192, 70)),
                  cardItem(context, BodyScreen(), 'BODY\nPROTECTION', Icons.emoji_people,
                      Color.fromARGB(255, 209, 149, 107)),
                  cardItem(context, HandScreen(), 'HAND\nPROTECTION', Icons.pan_tool,
                      Colors.red),
                  cardItem(context, FootScreen(), 'FOOT\nPROTECTION',
                      Icons.directions_walk, Color.fromARGB(255, 249, 97, 148)),
                ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardItem(BuildContext context, Widget navigateTo, String text,
      IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigateTo));
      },
      child: Card(
        margin: EdgeInsets.all(4),
        color: color,
        elevation: 2,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(color: const Color.fromARGB(255, 16, 12, 12), fontSize: 42),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
