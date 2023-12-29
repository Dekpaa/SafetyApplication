import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/Component/appBar.dart';

class HeadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Head Protection',
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Head Protection to protect the head from falling objects, flying objects and overhead objects.',
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
    'assets/images/head1.png',
    'assets/images/head2.png',
    'assets/images/head3.png',
    'assets/images/head4.png',
    'assets/images/head5.png',
  ];

  final List<String> textData = [
    'ORANGE SAFETY HELMET',
    'YELLOW SAFETY HELMET',
    'WHITE   SAFETY HELMET',
    'ORANGE COMBAT HELMET',
    'WHITE COMBAT HELMET',
  ];

  CardItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        color: Color.fromARGB(255, 40, 116, 178),
        child: Center(
            child: Text(textData[index],
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 251, 247, 247),
                fontSize: 32,
                fontWeight:FontWeight.bold
                ))),
      ),
      back: Card(
        child: Center(
          child: Image.asset(imagePaths[index]),
        ),
      ),
    );
  }
}
