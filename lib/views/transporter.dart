import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/component/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class TransporterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
      color: Color.fromARGB(209, 108, 164, 183),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TransporterScreen()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(30),
          trailing: Icon(Icons.agriculture,
              size: 50, color: Color.fromARGB(159, 0, 0, 0)),
          title: Text('TRANSPORTER',
              style: GoogleFonts.bebasNeue(
                  color: Color.fromARGB(221, 0, 0, 0), fontSize: 45)),
        ),
      ),
    );
  }
}

class TransporterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Transporter Safety Orientation',
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TransporterOptionButton(
                text: 'MODULE',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SlideScreen()));
                },
                image: 'assets/images/ori_slide.png',
              ),
              TransporterOptionButton(
                text: 'VIDEO',
                onPressed: () {
                  _launchVideo();
                },
                image: 'assets/images/ori_vid.png',
              ),
              TransporterOptionButton(
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

class TransporterOptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String image;

  TransporterOptionButton(
      {required this.text, required this.onPressed, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 170,
        width: 320,
        child: Padding(
          padding: EdgeInsets.all(10.0),
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
      image: 'assets/images/t1.png',
      description: 'Elain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t2.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t3.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t4.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t5.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t6.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t7.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t8.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t9.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t10.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t11.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t12.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t13.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t14.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t15.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t16.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t17.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t18.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t19.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t20.png',
      description: 'Slide 4 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t21.png',
      description: 'Explain.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t22.png',
      description: 'Slide 2 description.',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t23.png',
      description: 'Slide 3 description.',
      audio: 'assets/slide1_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t24.png',
      description: 'Reporting an accident . ',
      audio: 'assets/slide2_audio.mp3',
    ),
    Slide(
      image: 'assets/images/t25.png',
      description: 'Thankyou for your time !!',
      audio: 'assets/slide1_audio.mp3',
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
        title: 'Module Transporter',
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

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset('assets/videos/vidtransporter.mov');
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Video Transporter',
      ),
      body: Center(
        child: Chewie(controller: chewieController),
      ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}

  void _launchQuiz() async {
    const url = 'https://forms.office.com/r/nW4P7rg3MF';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchVideo() async {
    const url = 'https://youtu.be/CmJKQHXaK1A';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }