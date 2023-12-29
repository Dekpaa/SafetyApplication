import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/Component/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Foot Protection',
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Foot  Protection to protect feet from falling objects,rolloing objects , sharp objects , wet and slippery surfaces, uneven surface , hot surface and electrical hazard.',
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
    'assets/images/foot1.png',
    'assets/images/foot2.png',
    'assets/images/foot3.png',
    'assets/images/foot4.png',
  ];

  final List<String> textData = [
    'SAFETY SHOE   LADIES',
    'SAFETY SHOE LOW CUT',
    'SAFETY SHOE HIGH CUT',
    'RUBBER BOOTS',
  ];

  CardItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        color:Color.fromARGB(255, 249, 97, 148),
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