import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '/Component/appBar.dart';

class EmergencyScreen extends StatefulWidget {
  @override
  _EmergencyScreen createState() => _EmergencyScreen();
}

class _EmergencyScreen extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 153, 180, 227),
      appBar: AppBarSimple(
        title: 'Emergency',
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: 350,
                height: 140,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 35, 92)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 35, 92)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SafetyOfficeContacts()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.call,
                          size: 30, color: Color.fromARGB(159, 169, 210, 229)),
                      Text('       CONTACT \n       INFORMATION',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                height: 140,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 35, 92)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 9, 35, 92)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.location_on,
                          size: 30, color: Color.fromARGB(159, 169, 210, 229)),
                      Text('          LOCATION',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 153, 180, 227),
      appBar: AppBarSimple(
        title: 'Contact Information',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 350,
              height: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 22, 86, 26),
                    onPrimary: Color.fromARGB(255, 250, 250, 249),
                    side: BorderSide(
                        color: Color.fromARGB(255, 236, 236, 235), width: 5),
                    elevation: 3),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SafetyOfficeContacts()),
                  );
                },
                child: Text('Safety Office',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              width: 350,
              height: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 22, 86, 26),
                    onPrimary: Color.fromARGB(255, 250, 250, 249),
                    side: BorderSide(
                        color: Color.fromARGB(255, 236, 236, 235), width: 5),
                    elevation: 3),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClinicContacts()),
                  );
                },
                child: Text('P',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SafetyOfficeContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 220, 172),
      appBar: AppBarSimple(
        title: 'Safety Office Contact',
      ),
      body: ListView(
        children: <Widget>[
          Text('EMERGENCY CALL : 777',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  color: Color.fromARGB(255, 206, 11, 11),
                  fontSize: 26,
                  fontWeight: FontWeight.bold)),
          ContactCard(
            title: 'MANAGER SAFETY AND HEALTH',
            description: 'Mr Mohd Nafiz',
            phoneNumber: '0125980244',
            email: 'mohdnafiz.shaharon@southsteel.com',
          ),
          ContactCard(
              title: 'SAFETY OFFICER 1 ',
              description: 'Mr Karthi',
              phoneNumber: '0194769007',
              email: 'karthiges.krishnan@southsteel.com'),
          ContactCard(
              title: 'SAFETY OFFICER 2',
              description: 'Mr Ilmam Faqih',
              phoneNumber: '01110890220',
              email: 'ilmamfaqih.mohamadshuhaimi@southsteel.com'),
        ],
      ),
    );
  }
}

class ClinicContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 153, 180, 227),
      appBar: AppBarSimple(
        title: 'Clinic Contact',
      ),
      body: ListView(
        children: <Widget>[
          ContactCard(
            title: 'Nur Syifaa Adilla',
            description: 'This is the first clinic contact.',
            phoneNumber: '01137149472',
            email: 'syifaaadill16@gmail.com',
          ),
          ContactCard(
            title: 'Clinic 2',
            description: 'Details',
            phoneNumber: '444-555-6666',
            email: 'clinic2@example.com',
          ),
          ContactCard(
            title: 'Clinic 3',
            description: 'This is the third clinic contact.',
            phoneNumber: '777-888-9999',
            email: 'clinic3@example.com',
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String title;
  final String description;
  final String phoneNumber;
  final String email;

  ContactCard(
      {required this.title,
      required this.description,
      required this.phoneNumber,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      color: Color.fromARGB(255, 224, 145, 53),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(title,
                style: GoogleFonts.notoSans(
                    color: const Color.fromARGB(255, 5, 40, 94),
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            subtitle: Text(
              description,
              style: GoogleFonts.inriaSans(
                  color: Color.fromARGB(221, 13, 10, 10),
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Text('    Phone number: ',
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 13, 10, 10),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 40,
                width: 160,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 211, 177, 141)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 211, 177, 141)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                  onPressed: () {
                    _launchPhoneCall(phoneNumber);
                  },
                  child: Text(
                    '$phoneNumber',
                    style: GoogleFonts.aBeeZee(
                        color: Color.fromARGB(221, 13, 10, 10),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('    Email: ',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 13, 10, 10),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 45,
                width: 290,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 211, 177, 141)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 211, 177, 141)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
                  onPressed: () {
                    _launchEmail(email);
                  },
                  child: Text('$email',
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.aBeeZee(
                          color: Color.fromARGB(221, 13, 10, 10),
                          fontSize: 16,
                          fontWeight: FontWeight.normal)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  void _launchPhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchEmail(String email) async {
    final url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 153, 180, 227),
      appBar: AppBarSimple(
        title: 'Location',
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
                'Safety and Health Department',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 44, 9, 114),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
          ),
          Image.asset(
                'assets/images/safetydept.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
          Text(
                'The safety and health department is located in the human resource office building.',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 13, 10, 10),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
          ListTile(
            subtitle: Text(
                'First Aid Center',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 44, 9, 114),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
          ),
          Image.asset(
                'assets/images/firstaid.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
          Text(
                'The First Aid Center is to the right of the Human Resources Office.',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 13, 10, 10),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
          ListTile(
            title: Text(
                'Assembly Point',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Color.fromARGB(221, 44, 9, 114),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            subtitle: Text(
                'HUMAN RESOURCE BUILDING 2nd FLOOR',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))
          ),
          Image.asset(
                'assets/images/ap1.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
          ListTile(
            subtitle: Text(
                'HQ BUILDING 2nd FLOOR',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
          ),
          Image.asset(
                'assets/images/ap2.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
          ListTile(
            subtitle: Text(
                'RM2 PRODUCTION OFFICE AREA',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
          ),
          Image.asset(
                'assets/images/ap3.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
        ListTile(
            subtitle: Text(
                'SMP 1 FURNACE',
                textAlign: TextAlign.center,
                  style: GoogleFonts.inriaSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
          ),
          Image.asset(
                'assets/images/ap4.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
          SizedBox(height: 10,)

        ],
      ),
    );
  }
}
