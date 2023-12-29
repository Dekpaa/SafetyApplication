import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/screen/ppe_screen.dart';
import 'package:safetyapps/views/s_f.dart';
import 'package:safetyapps/views/s_m.dart';
import 'package:safetyapps/views/s_p.dart';
import 'package:safetyapps/views/s_s.dart';
import 'package:safetyapps/views/s_w.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '/Component/appBar.dart';

class SignageScreen extends StatefulWidget {
  @override
  _SignageScreen createState() => _SignageScreen();
}

class _SignageScreen extends State<SignageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(title: 'Safety Signage'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeSign(),
          MandatorySign(),
          ProhibitionSign(),
          WarningSign(),
          FireSign(),
        ],
      ),
    );
  }
}
