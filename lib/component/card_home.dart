import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safetyapps/Model/model.dart';

class CardHome extends StatelessWidget {
  final ModelHome data;
  final String title;
  final Widget screen;
  CardHome({required this.data, required this.title, required this.screen});
  void _navigate(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return screen;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("My");
        _navigate(context, screen);
      },
      splashColor:Color.fromARGB(255, 214, 221, 227),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: Color.fromARGB(255, 101, 159, 213),
        height: 109,
        child: Card(
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            color: Color.fromARGB(255, 195, 214, 230),
            elevation: 20,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(data.image, height: 100, fit: BoxFit.fill),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(data.title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            color: const Color.fromARGB(255, 20, 17, 15),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                SizedBox(
                  width: 12),
              ],
            )),
      ),
    );
  }
}