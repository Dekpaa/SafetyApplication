import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/views/contractor.dart';
import 'package:safetyapps/views/transporter.dart';
import '/Component/appBar.dart';

class TrainingScreen extends StatefulWidget {
  @override
  _TrainingScreen createState() => _TrainingScreen();
}

class _TrainingScreen extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Training',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                      'SAFETY\n ORIENTATION',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.acme(
                      color: const Color.fromARGB(255, 10, 36, 75),
                      fontSize: 45,
                      fontWeight: FontWeight.bold
                      ),
                    ),
              SizedBox(height: 20,),
              TransporterButton(),
              ContractorButton(),
            ],
          ),
        ),
      ),
    );
  }
}
