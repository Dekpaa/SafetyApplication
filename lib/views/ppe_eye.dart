import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/Component/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class EyeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Eye protection',
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Eye Protection to protect the eyes from dust,spark fire,mist, smoke and gases that may be harmful to the eyes or cause irritation.',
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
            itemCount: 4,
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
    'assets/images/eye1.png',
    'assets/images/eye2.png',
    'assets/images/eye3.png',
    'assets/images/eye4.png',
  ];

  final List<String> textData = [
    'SPECTACLE CLEAR',
    'SPECTACLE TINTED',
    'GOGGLES',
    'COBALT BLUE WELDING SPECTACLES',
  ];

  CardItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        color: Color.fromARGB(255, 35, 130, 121),
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