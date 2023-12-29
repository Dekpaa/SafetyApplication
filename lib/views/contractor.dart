import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class ContractorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 5, 30, 5),
      color: Color.fromARGB(209, 228, 231, 82),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContractorScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(30),
          trailing: Icon(Icons.emoji_people_sharp,
              size: 50, color: Color.fromARGB(159, 13, 25, 30)),
          title: Text('CONTRACTOR',
              style: GoogleFonts.bebasNeue(
                  color: Color.fromARGB(221, 0, 0, 0), fontSize: 45)),
        ),
      ),
    );
  }
}

class ContractorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Contractor Safety Orientation',
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContractorOptionButton(
                text: 'MODULE',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SlideScreen()));
                },
                image: 'assets/images/ori_slide.png',
              ),
              ContractorOptionButton(
                text: 'VIDEO',
                onPressed: () {
                  _launchVideo();
                },
                image: 'assets/images/ori_vid.png',
              ),
              ContractorOptionButton(
                text: 'QUIZ',
                onPressed: () {
                  _launchQuiz();
                },
                image: 'assets/images/ori_quiz.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContractorOptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String image;

  ContractorOptionButton(
      {required this.text, required this.onPressed, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 170,
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 135, 40, 33)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 201, 140, 140)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Color.fromARGB(255, 135, 40, 33),
                            width: 4)))),
            onPressed: onPressed,
            child: Row(
              children: [
                Image.asset(image, height: 100, fit: BoxFit.fill),
                Text(
                  text,
                  style: GoogleFonts.aBeeZee(
                      color: const Color.fromARGB(255, 2, 2, 2),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SlideScreen extends StatefulWidget {
  @override
  _SlideScreenState createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  final List<Slide> slides = [
    Slide(
      image: 'assets/images/c1.png', // letak slides sini
      description: 'Slide 1 description.', // Description untuk slide
      audio: 'assets/slide1_audio.mp3', // ni untuk letak audio
    ),
    Slide(
      image: 'assets/images/c2.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c3.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c4.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c5.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c6.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c7.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c8.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c9.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c10.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c11.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c12.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c13.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c14.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c15.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c16.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c17.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c18.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c19.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c20.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c21.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c22.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c23.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c24.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c25.png',
      description: 'Thankyou for your time !!',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c26.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c27.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c28.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c29.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c30.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c31.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c32.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c33.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c34.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c35.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c36.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c37.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c38.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c39.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c40.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c41.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c42.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c43.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c44.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c45.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c46.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c47.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c48.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c49.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c50.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c51.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c52.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/c53.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
  ];

  int currentIndex = 0;
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playAudio(slides[currentIndex].audio);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void _playAudio(String audioPath) async {
    await audioPlayer.play(
      audioPath as Source,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Module Contractor',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    if (currentIndex > 0) {
                      setState(() {
                        currentIndex--;
                        _playAudio(slides[currentIndex].audio);
                      });
                    }
                  },
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      slides[currentIndex].image,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    if (currentIndex < slides.length - 1) {
                      setState(() {
                        currentIndex++;
                        _playAudio(slides[currentIndex].audio);
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Slide {
  final String image;
  final String description;
  final String audio;

  Slide({
    required this.image,
    required this.description,
    required this.audio,
  });
}

  void _launchQuiz() async {
    const url = 'https://forms.office.com/r/GSzTP91GQN';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchVideo() async {
    const url = 'https://youtu.be/VH3QQMUpbvQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }