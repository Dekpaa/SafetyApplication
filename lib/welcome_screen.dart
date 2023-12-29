import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/screen/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 26, 66, 94),
                  Color.fromARGB(255, 26, 66, 94),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/welcome3.png',
                      width: 470,
                      height: 180,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 130),
                    Text(
                      'Welcome to \n SSB SMART SAFETY \n APPLICATION ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.acme(
                          color: Color.fromARGB(221, 253, 253, 253),
                          fontSize: 40),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 70,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignInScreen()));
                      },
                      child: Container(
                        height: 65,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 212, 205, 205),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.black, width: 6)),
                        child: Center(
                          child: Text(
                            'START',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.acme(
                                color: Color.fromARGB(221, 0, 0, 0),
                                fontSize: 37),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
