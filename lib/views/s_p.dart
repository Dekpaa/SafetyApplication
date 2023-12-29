import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class ProhibitionSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 5),
      color: Colors.white,
      elevation: 30,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProhibitionScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text('Prohibition Signs',textAlign: TextAlign.center,
              style: GoogleFonts.bebasNeue(color: Colors.red, fontSize: 43)),
        ),
      ),
    );
  }
}

class ProhibitionScreen extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      title: 'P001',
      description: 'General mandatory action sign',
      imagePath: 'assets/images/p1.png',
    ),
    CardData(
      title: 'P002',
      description: 'No smoking',
      imagePath: 'assets/images/p2.png',
    ),
    CardData(
      title: 'P003',
      description: 'No open flame, Fire, open ignition source and smoking prohibited',
      imagePath: 'assets/images/p3.png',
    ),
    CardData(
      title: 'P004',
      description: 'No thoroughfare',
      imagePath: 'assets/images/p4.png',
    ),
    CardData(
      title: 'P005',
      description: 'Not drinking water',
      imagePath: 'assets/images/p5.png',
    ),
    CardData(
      title: 'P006',
      description: 'No access for forklift trucks and other industrial vehicles',
      imagePath: 'assets/images/p6.png',
    ),
    CardData(
      title: 'P007',
      description: 'No access for people with active implanted cardiac devices',
      imagePath: 'assets/images/p7.png',
    ),
    CardData(
      title: 'P008',
      description: 'No metallic articles or watches',
      imagePath: 'assets/images/p8.png',
    ),
    CardData(
      title: 'P009',
      description: 'Do not touch',
      imagePath: 'assets/images/p9.png',
    ),
    CardData(
      title: 'P010',
      description: 'Do not extinguish with water',
      imagePath: 'assets/images/p10.png',
    ),
    CardData(
      title: 'P011',
      description: 'No heavy load',
      imagePath: 'assets/images/p11.png',
    ),
    CardData(
      title: 'P012',
      description: 'No activated mobile phones',
      imagePath: 'assets/images/p12.png',
    ),
    CardData(
      title: 'P013',
      description: 'No access for people with metallic implants',
      imagePath: 'assets/images/p13.png',
    ),
    CardData(
      title: 'P014',
      description: 'No reaching in',
      imagePath: 'assets/images/p14.png',
    ),
    CardData(
      title: 'P015',
      description: 'No pushing',
      imagePath: 'assets/images/p15.png',
    ),
    CardData(
      title: 'P016',
      description: 'No sitting',
      imagePath: 'assets/images/p16.png',
    ),
    CardData(
      title: 'P017',
      description: 'No stepping on surface',
      imagePath: 'assets/images/p17.png',
    ),
    CardData(
      title: 'P018',
      description: 'Do not use lift in the event of fire',
      imagePath: 'assets/images/p18.png',
    ),
    CardData(
      title: 'P019',
      description: 'No dogs',
      imagePath: 'assets/images/p19.png',
    ),
    CardData(
      title: 'P020',
      description: 'No eating or drinking',
      imagePath: 'assets/images/p20.png',
    ),
    CardData(
      title: 'P021',
      description: 'Do not obstruct',
      imagePath: 'assets/images/p21.png',
    ),
    CardData(
      title: 'P022',
      description: 'Do not walk or stand here',
      imagePath: 'assets/images/p22.png',
    ),
    CardData(
      title: 'P023',
      description: 'Do not use this incomplete scaffold',
      imagePath: 'assets/images/p23.png',
    ),
    CardData(
      title: 'P024',
      description: 'Do not use this device in a bathtub, shower or water-filled reservoir',
      imagePath: 'assets/images/p24.png',
    ),
    CardData(
      title: 'P025',
      description: 'Do not use this lift for people',
      imagePath: 'assets/images/p25.png',
    ),
    CardData(
      title: 'P026',
      description: 'Do not wear gloves',
      imagePath: 'assets/images/p26.png',
    ),
    CardData(
      title: 'P027',
      description: 'No photography',
      imagePath: 'assets/images/p27.png',
    ),
    CardData(
      title: 'P028',
      description: 'Do not tie knots in rope',
      imagePath: 'assets/images/p28.png',
    ),
    CardData(
      title: 'P029',
      description: 'Do not alter the state of the switch',
      imagePath: 'assets/images/p29.png',
    ),
    CardData(
      title: 'P030',
      description: 'Do not use for face grinding',
      imagePath: 'assets/images/p30.png',
    ),
    CardData(
      title: 'P031',
      description: 'Do not use for wet grinding',
      imagePath: 'assets/images/p31.png',
    ),
    CardData(
      title: 'P032',
      description: 'Do not use with hand-held grinding machine',
      imagePath: 'assets/images/p32.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title: 'Prohibition Signs'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Prohibition signs (P) : Signs indicating an action or activity are not permitted.',
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
      color: Color.fromARGB(255, 240, 202, 197),
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