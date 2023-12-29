import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class FireSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 5),
      color: Colors.red,
      elevation: 30,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FireScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text('Fire signs',textAlign: TextAlign.center,
              style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43)),
        ),
      ),
    );
  }
}

class FireScreen extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      title: 'F001',
      description: 'Fire extinguisher',
      imagePath: 'assets/images/fire1.png',
    ),
    CardData(
      title: 'F002',
      description: 'Fire hose reel',
      imagePath: 'assets/images/fire2.png',
    ),
    CardData(
      title: 'F003',
      description: 'Fire ladder',
      imagePath: 'assets/images/fire3.png',
    ),
    CardData(
      title: 'F004',
      description: 'Fire fighting equipment ',
      imagePath: 'assets/images/fire4.png',
    ),
    CardData(
      title: 'F005',
      description: 'Fire alarm call point',
      imagePath: 'assets/images/fire5.png',
    ),
    CardData(
      title: 'F006',
      description: 'Fire emergency telephone',
      imagePath: 'assets/images/fire6.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title: 'Fire Signs'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Fire safety signs (F) : Signs advising the location of fire alarms and fire-fighting facilities.',
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
      color: Color.fromARGB(255, 254, 246, 246),
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