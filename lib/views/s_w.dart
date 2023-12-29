import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class WarningSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 5),
      color: Colors.yellow,
      elevation: 30,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WarningScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text('Warning signs',textAlign: TextAlign.center,
              style: GoogleFonts.bebasNeue(color: Color.fromARGB(221, 0, 0, 0), fontSize: 43)),
        ),
      ),
    );
  }
}

class WarningScreen extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      title: 'W001',
      description: 'General warning sign',
      imagePath: 'assets/images/w1.png',
    ),
    CardData(
      title: 'W002',
      description: 'Explosive material',
      imagePath: 'assets/images/w2.png',
    ),
    CardData(
      title: 'W003',
      description: 'Radioactive material or ionising radiation',
      imagePath: 'assets/images/w3.png',
    ),
    CardData(
      title: 'W004',
      description: 'Laser beam',
      imagePath: 'assets/images/w4.png',
    ),
    CardData(
      title: 'W005',
      description: 'Non-ionising radiation',
      imagePath: 'assets/images/w5.png',
    ),
    CardData(
      title: 'W006',
      description: 'Magnetic field',
      imagePath: 'assets/images/w6.png',
    ),
    CardData(
      title: 'W007',
      description: 'Floor-level obstacle',
      imagePath: 'assets/images/w7.png',
    ),
    CardData(
      title: 'W008',
      description: 'Drop (fall)',
      imagePath: 'assets/images/w8.png',
    ),
    CardData(
      title: 'W009',
      description: 'Biological hazard',
      imagePath: 'assets/images/w9.png',
    ),
    CardData(
      title: 'W010',
      description: 'Low temperature/freezing conditions',
      imagePath: 'assets/images/w10.png',
    ),
    CardData(
      title: 'W011',
      description: 'Slippery surface',
      imagePath: 'assets/images/w11.png',
    ),
    CardData(
      title: 'W012',
      description: 'Electricity',
      imagePath: 'assets/images/w12.png',
    ),
    CardData(
      title: 'W013',
      description: 'Guard dog',
      imagePath: 'assets/images/w13.png',
    ),
    CardData(
      title: 'W014',
      description: 'Forklift trucks and other industrial vehicles',
      imagePath: 'assets/images/w14.png',
    ),
    CardData(
      title: 'W015',
      description: 'Overhead load',
      imagePath: 'assets/images/w15.png',
    ),
    CardData(
      title: 'W016',
      description: 'Toxic material',
      imagePath: 'assets/images/w16.png',
    ),
    CardData(
      title: 'W017',
      description: 'Hot surface',
      imagePath: 'assets/images/w17.png',
    ),
    CardData(
      title: 'W018',
      description: 'Automated start-up',
      imagePath: 'assets/images/w18.png',
    ),
    CardData(
      title: 'W019',
      description: 'Crushing',
      imagePath: 'assets/images/w19.png',
    ),
    CardData(
      title: 'W020',
      description: 'Overhead obstacle',
      imagePath: 'assets/images/w20.png',
    ),
    CardData(
      title: 'W021',
      description: 'Flammable materials',
      imagePath: 'assets/images/w21.png',
    ),
    CardData(
      title: 'W022',
      description: 'Sharp element',
      imagePath: 'assets/images/w22.png',
    ),
    CardData(
      title: 'W023',
      description: 'Corrosive substance',
      imagePath: 'assets/images/w23.png',
    ),
    CardData(
      title: 'W024',
      description: 'Crushing of hands',
      imagePath: 'assets/images/w24.png',
    ),
    CardData(
      title: 'W025',
      description: 'Counterrotating rollers',
      imagePath: 'assets/images/w25.png',
    ),
    CardData(
      title: 'W026',
      description: 'Battery charging',
      imagePath: 'assets/images/w26.png',
    ),
    CardData(
      title: 'W027',
      description: 'Optical radiation',
      imagePath: 'assets/images/w27.png',
    ),
    CardData(
      title: 'W028',
      description: 'Oxidising substances',
      imagePath: 'assets/images/w28.png',
    ),
    CardData(
      title: 'W029',
      description: 'Pressurised cylinder',
      imagePath: 'assets/images/w29.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title:'Warning Signs'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Warning signs (W) : Signs warning of a hazard or hazardous condition.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.alegreyaSans(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cardDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(
                  cardData: cardDataList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardData {
  final String title;
  final String description;
  final String imagePath;

  CardData({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 225, 218, 173),
      margin: EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListTile(
              title: Text(cardData.title,style:GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20,)),
              subtitle: Text(cardData.description,style:GoogleFonts.inriaSans(color: Colors.black, fontSize: 18),),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              cardData.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}