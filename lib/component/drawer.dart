import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/screen/signin_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 150, 182, 208),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 33, 37, 95),
                    width: 7,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/images/aboutus.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text('SSB Smart Safety \n      Application',
                  style: GoogleFonts.acme(
                      fontSize: 25,
                      color: Color.fromARGB(255, 16, 35, 110),
                      shadows: [
                        const Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            color: Color.fromARGB(255, 216, 213, 195))
                      ])),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.stars),
            title: Text('About us',style: GoogleFonts.inriaSans(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontSize: 18,)),
            onTap: () {
              _launchURL();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.person_2_sharp),
            title: Text('Contact Developer',style: GoogleFonts.inriaSans(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontSize: 18,)),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => ContactDeveloperDialog());
            },
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: Text('Feedback',
            style: GoogleFonts.inriaSans(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontSize: 18,)),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => const FeedbackDialog());
            },
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: Text('Log Out',style: GoogleFonts.inriaSans(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontSize: 18,)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInScreen()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 200, 209, 224),
      iconColor: Colors.black,
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Enter your feedback here',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 100,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please enter the feedback';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          child: Text('Cancel',
                    style: GoogleFonts.inriaSans(
                                  color: const Color.fromARGB(255, 17, 84, 139),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: Text('Send',
                    style: GoogleFonts.inriaSans(
                                  color: const Color.fromARGB(255, 17, 84, 139),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              String message;
              try {
                final collection =
                    FirebaseFirestore.instance.collection('feedback');
                await collection.doc().set({
                  'timestamp': FieldValue.serverTimestamp(),
                  'feedback': _controller.text,
                });
                message = 'Feedback sent successfully';
              } catch (e) {
                message = 'Error when sending feedback';
              }
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
              Navigator.pop(context);
            }
          },
        )
      ],
    );
  }
}


class ContactDeveloperDialog extends StatelessWidget {
  final String developerName = 'Nur Syifaa Adilla \n Binti Mohd Zaki';
  final String emailAddress = 'syifaaadilla16@gmail.com';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 57, 76, 105),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Developer Apps',
          style: GoogleFonts.acme(
                                  color: Color.fromARGB(255, 138, 228, 228),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Image.asset(
            'assets/images/imagedev.png',
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            developerName,
                    style: GoogleFonts.acme(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30,),
              ElevatedButton(
                        style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 137, 160, 210)),
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 156, 180, 232)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )
                    )
                  ),
                onPressed: () => _sendEmail(emailAddress),
                child: Row(
                  children: [
                    Icon(Icons.email_outlined,
                          size: 30, color: Colors.black),
                    Text('  Email Developer',
                    style: GoogleFonts.inriaSans(
                                  color: const Color.fromARGB(255, 17, 84, 139),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _sendEmail(String email) async {
    final emailUrl = 'mailto:$email';
    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }
}

void _launchURL() async {
    const url = 'https://www.southsteel.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }