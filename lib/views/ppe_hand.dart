import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/Component/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class HandScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Hand Protection',
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Hand  Protection to protect hands from cuts and abrasions which might result from contact  sharp objects ,hots objects , chemicals,biological or electrical.',
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
            itemCount: 9,
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
    'assets/images/hand1.png',
    'assets/images/hand2.png',
    'assets/images/hand3.png',
    'assets/images/hand4.png',
    'assets/images/hand5.png',
    'assets/images/hand6.png',
    'assets/images/hand7.png',
    'assets/images/hand8.png',
    'assets/images/hand9.png',
  ];

  final List<String> textData = [
    'LEATHER\nGLOVE',
    'NITRILE\nGLOVE',
    'ALUMINIUM\nHEAT\nGLOVE',
    'COTTON\nGLOVES',
    'DISPOSABLE\nLATEX',
    'IMPACT\nGLOVES',
    'TEMPO\nGLOVES',
    'KAVLAR\nARM\nSLEEVE',
    'ALUMINISED\nSLEEVES',
    
  ];

  CardItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        color: Colors.red,
        child: Center(child: Text(textData[index],
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