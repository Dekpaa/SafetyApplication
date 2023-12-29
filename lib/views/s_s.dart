import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class SafeSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 5),
      color: Colors.green,
      elevation: 30,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SafeScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text('Safe Condition Signs',textAlign: TextAlign.center,
              style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43)),
        ),
      ),
    );
  }
}

class SafeScreen extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      title: 'E001',
      description: 'Emergency exit (right hand)',
      imagePath: 'assets/images/e1.png',
    ),
    CardData(
      title: 'E002',
      description: 'Emergency exit (left hand)',
      imagePath: 'assets/images/e2.png',
    ),
    CardData(
      title: 'E003',
      description: 'First aid',
      imagePath: 'assets/images/e3.png',
    ),
    CardData(
      title: 'E004',
      description: 'Emergency telephone',
      imagePath: 'assets/images/e4.png',
    ),
    CardData(
      title: 'E005',
      description: 'Evacuation assembly point',
      imagePath: 'assets/images/e5.png',
    ),
    CardData(
      title: 'E006',
      description: 'Break to obtain access',
      imagePath: 'assets/images/e6.png',
    ),
    CardData(
      title: 'E007',
      description: 'Doctor',
      imagePath: 'assets/images/e7.png',
    ),
    CardData(
      title: 'E008',
      description: 'Automated external heart defibrillator',
      imagePath: 'assets/images/e8.png',
    ),
    CardData(
      title: 'E009',
      description: 'Eyewash station',
      imagePath: 'assets/images/e9.png',
    ),
    CardData(
      title: 'E010',
      description: 'Safety shower',
      imagePath: 'assets/images/e10.png',
    ),
    CardData(
      title: 'E011',
      description: 'Stretcher',
      imagePath: 'assets/images/e11.png',
    ),
    CardData(
      title: 'E012',
      description: 'Emergency window with escape ladder',
      imagePath: 'assets/images/e12.png',
    ),
    CardData(
      title: 'E013',
      description: 'Rescue window',
      imagePath: 'assets/images/e13.png',
    ),
    CardData(
      title: 'E014',
      description: 'Turn anticlockwise to open',
      imagePath: 'assets/images/e14.png',
    ),
    CardData(
      title: 'E015',
      description: 'Turn clockwise to open',
      imagePath: 'assets/images/e15.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title: 'Safe Condition Signs'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Safe condition signs (E) : Signs indicating an evacuation route, the location of safety equipment or a safety facility, or a safety action (safe condition signs).',
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
      color: Colors.green.shade100,
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