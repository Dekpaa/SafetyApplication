import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreen createState() => _InfoScreen();
}

class _InfoScreen extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SSB SMART SAFETY APPS',
                    style: GoogleFonts.acme(
                        color: Color.fromARGB(255, 11, 11, 80),
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '-EDUCATION APPLICATION-',
                    style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(255, 78, 44, 44),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '"SSB Smart Safety Apps is a comprehensive safety application developed with the primary goal of ensuring the  safety for workers while simplifying access to vital safety information for employees at Southern Steel Berhad. Furthermore, this application is designed to significantly reduce the occurrence of incidents and fostering a safer work environment".',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(255, 19, 11, 11),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Card(
                        color: Color.fromARGB(255, 249, 237, 208),
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'COMPONENTS UTILIZED IN THE DEVELOPMENT :',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                    color: Color.fromARGB(255, 19, 11, 11),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              componentWithIcon(
                                icon: Icons.code,
                                text: 'Visual Studio Code',
                              ),
                              componentWithIcon(
                                text: 'Android Studio',
                                icon: Icons.android,
                              ),
                              componentWithIcon(
                                text: 'Flutter',
                                icon: Icons.flutter_dash,
                              ),
                              componentWithIcon(
                                text: 'Dart',
                                icon: Icons.extension,
                              ),
                              componentWithIcon(
                                text: 'Firebase',
                                icon: Icons.cloud,
                              ),
                              componentWithIcon(
                                text: 'Canva',
                                icon: Icons.palette,
                              ),
                              componentWithIcon(
                                text: 'Capcut',
                                icon: Icons.movie,
                              ),
                              componentWithIcon(
                                text: 'Microsoft Powerpoint',
                                icon: Icons.video_label,
                              ),
                              componentWithIcon(
                                text: 'Microsoft Form',
                                icon: Icons.format_align_center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class componentWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  const componentWithIcon({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: _getIconColor(icon),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 19, 11, 11),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Color _getIconColor(IconData icon) {
    switch (icon) {
      case Icons.code:
        return Colors.blue;
      case Icons.android:
        return Colors.green;
      case Icons.flutter_dash:
        return Colors.blue;
      case Icons.extension:
        return const Color.fromARGB(255, 133, 170, 200);
      case Icons.cloud:
        return Colors.orange;
      case Icons.palette:
        return Colors.purple;
      case Icons.movie:
        return Colors.green;
      case Icons.video_label:
        return Colors.black;
      case Icons.format_align_center:
        return const Color.fromARGB(255, 11, 46, 75);
      default:
        return Colors.black;
    }
  }
}
