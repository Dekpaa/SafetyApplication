import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '/Component/appBar.dart';

class SafetyCode extends StatefulWidget {
  @override
  _SafetyCode createState() => _SafetyCode();
}

class _SafetyCode extends State<SafetyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'E-Safety Code',
      ),
      body: SfPdfViewer.asset(
              'assets/safetycode_ve.pdf',
  ));
  }
}