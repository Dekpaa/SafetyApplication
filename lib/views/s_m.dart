import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class MandatorySign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 5),
      color: Colors.blue.shade800,
      elevation: 30,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MandatoryScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text('Mandatory Signs',textAlign: TextAlign.center,
              style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43)),
        ),
      ),
    );
  }
}

class MandatoryScreen extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      title: 'M001',
      description: 'General mandatory action sign',
      imagePath: 'assets/images/m1.png',
    ),
    CardData(
      title: 'M002',
      description: 'Refer to instruction manual/booklet',
      imagePath: 'assets/images/m2.png',
    ),
    CardData(
      title: 'M003',
      description: 'Wear ear protection',
      imagePath: 'assets/images/m3.png',
    ),
    CardData(
      title: 'M004',
      description: 'Wear eye protection',
      imagePath: 'assets/images/m4.png',
    ),
    CardData(
      title: 'M005',
      description: 'Connect an earth terminal to the ground',
      imagePath: 'assets/images/m5.png',
    ),
    CardData(
      title: 'M006',
      description: 'Disconnect mains plug from electrical outlet',
      imagePath: 'assets/images/m6.png',
    ),
    CardData(
      title: 'M007',
      description: 'Opaque eye protection shall be worn',
      imagePath: 'assets/images/m7.png',
    ),
    CardData(
      title: 'M008',
      description: 'Wear safety footwear',
      imagePath: 'assets/images/m8.png',
    ),
    CardData(
      title: 'M009',
      description: 'Wear protective gloves',
      imagePath: 'assets/images/m9.png',
    ),
    CardData(
      title: 'M010',
      description: 'Wear protective clothing',
      imagePath: 'assets/images/m10.png',
    ),
    CardData(
      title: 'M011',
      description: 'Wash your hands',
      imagePath: 'assets/images/m11.png',
    ),
    CardData(
      title: 'M012',
      description: 'Use handrail',
      imagePath: 'assets/images/m12.png',
    ),
    CardData(
      title: 'M013',
      description: 'Wear a face shield',
      imagePath: 'assets/images/m13.png',
    ),
    CardData(
      title: 'M014',
      description: 'Wear head protection',
      imagePath: 'assets/images/m14.png',
    ),
    CardData(
      title: 'M015',
      description: 'Wear high-visibility clothing',
      imagePath: 'assets/images/m15.png',
    ),
    CardData(
      title: 'M016',
      description: 'Wear a mask',
      imagePath: 'assets/images/m16.png',
    ),
    CardData(
      title: 'M017',
      description: 'Wear respirator protection',
      imagePath: 'assets/images/m17.png',
    ),
    CardData(
      title: 'M018',
      description: 'Wear a safety harness',
      imagePath: 'assets/images/m18.png',
    ),
    CardData(
      title: 'M019',
      description: 'Wear a welding mask',
      imagePath: 'assets/images/m19.png',
    ),
    CardData(
      title: 'M020',
      description: 'Wear a safety belts',
      imagePath: 'assets/images/m20.png',
    ),
    CardData(
      title: 'M021',
      description: 'Disconnect before carrying out maintenance or repair',
      imagePath: 'assets/images/m21.png',
    ),
    CardData(
      title: 'M022',
      description: 'Use barrier cream',
      imagePath: 'assets/images/m22.png',
    ),
    CardData(
      title: 'M023',
      description: 'Use footbridge',
      imagePath: 'assets/images/m23.png',
    ),
    CardData(
      title: 'M024',
      description: 'Use this walkway',
      imagePath: 'assets/images/m24.png',
    ),
    CardData(
      title: 'M025',
      description: 'Use protective apron',
      imagePath: 'assets/images/m25.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title: 'Mandatory Signs'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Mandatory action signs (M) : Signs indicating an instruction shall be carried out.',
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
      color: Colors.blue.shade100,
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