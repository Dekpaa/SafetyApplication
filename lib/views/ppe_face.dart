import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/Component/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Face protection',
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Face Protection to shield the face from liquid splashes, dust, spark fire, and chemicals that may potentially damage or cause irritation to the skin.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.alegreyaSans(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.normal),
                ),
                Text(
                  'TAP CARD TO SEE THE IMAGE',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.alegreyaSans(
                      color: Colors.blue.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              return CardItem(index: index);
            },
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final int index;

  final List<String> imagePaths = [
    'assets/images/face1.png',
    'assets/images/face2.png',
    'assets/images/face3.png',
    'assets/images/face4.png',
    'assets/images/face5.png',
  ];

  final List<String> textData = [
    'GREEN HOOD',
    'YELLOW HOOD',
    'COTTON HOOD',
    'VISOR  CLEAR',
    'VISOR TINTED',
  ];

  CardItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        color: Color.fromARGB(255, 133, 99, 165),
        child: Center(
        child: Text(textData[index],
        textAlign: TextAlign.center,
        style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 251, 247, 247),
                fontSize: 32,
                fontWeight: FontWeight.bold))),
      ),
      back: Card(
        child: Center(
          child: Image.asset(imagePaths[index]),
        ),
      ),
    );
  }
}