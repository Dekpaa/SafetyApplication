import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/Component/appBar.dart';

class SafetyScreen extends StatefulWidget {
  @override
  _SafetyScreen createState() => _SafetyScreen();
}

class _SafetyScreen extends State<SafetyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 191, 218),
      appBar: AppBarSimple(
        title: 'Safety',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSafetyInfo(
                title: 'WHAT IS SAFETY ?',
                description:
                    'Safety is the state of being "safe", the condition of being protected from harm or other danger.',
              ),
              SizedBox(height: 20),
              _buildSafetyInfo(
                title: 'WHAT IS SAFETY IN WORKPLACE ?',
                description:
                    'Workplace safety refers to the working environment at a company and encompasses all factors that impact the safety, health, and well-being of employees. Workplace safety is monitored at the national level by the Occupational Safety and Health Administration (OSHA).',
              ),
              SizedBox(height: 20),
              _buildImportanceList(),
              SizedBox(height: 20),
              _buildSafetyTips(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSafetyInfo(
      {required String title, required String description}) {
    return Card(
      color: Color.fromARGB(255, 75, 103, 126),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                textAlign: TextAlign.center,
                title,
                style: GoogleFonts.aBeeZee(
                    color: Color.fromARGB(255, 221, 230, 237),
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.justify,
              description,
              style: GoogleFonts.aBeeZee(
                  color: Color.fromARGB(255, 19, 11, 11),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImportanceList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WHY IS WORKPLACE SAFETY IMPORTANT ?',
          style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 19, 11, 11),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafetyListItem(
              text: 'Prevents workplace accidents and injuries',
              icon: Icons.warning,
            ),
            SafetyListItem(
              text: 'Boosts employee morale and productivity',
              icon: Icons.thumb_up,
            ),
            SafetyListItem(
              text: 'Fosters a culture of care and responsibility',
              icon: Icons.favorite,
            ),
            SafetyListItem(
              text: 'Ensures compliance with regulations',
              icon: Icons.assignment_turned_in,
            ),
            SafetyListItem(
              text: 'Reduces costs related to accidents',
              icon: Icons.attach_money,
            ),
            SafetyListItem(
              text: 'Builds a positive company reputation',
              icon: Icons.people,
            ),
            SafetyListItem(
              text: 'Improves overall work environment',
              icon: Icons.eco,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSafetyTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WORKPLACE SAFETY TIPS !!',
          style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 19, 11, 11),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          children: [
            SafetyListItemWithIcon(
              text: '1. Use tools, equipment, and machinery properly',
              icon: Icons.build,
              iconColor: Colors.blue,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '2. Report any unsafe conditions',
              icon: Icons.warning,
              iconColor: Colors.orange,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '3. Wear all necessary safety gear',
              icon: Icons.safety_check,
              iconColor: Colors.green,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '4. Keep your workplace clear from clutter',
              icon: Icons.cleaning_services,
              iconColor: Colors.red,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '5. Stay hydrated',
              icon: Icons.local_drink,
              iconColor: Colors.purple,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '6. Practice good posture when sitting or lifting',
              icon: Icons.airline_seat_legroom_extra_outlined,
              iconColor: Colors.teal,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '7. Take regular breaks',
              icon: Icons.access_time,
              iconColor: Colors.deepOrange,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '8. Be aware of your surroundings',
              icon: Icons.dangerous,
              iconColor: Colors.amber,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '9. Never take shortcuts',
              icon: Icons.alt_route,
              iconColor: Colors.indigo,
              iconAlignment: MainAxisAlignment.end,
            ),
            SafetyListItemWithIcon(
              text: '10. Remain aware of new safety procedures',
              icon: Icons.medical_services,
              iconColor: Colors.cyan,
              iconAlignment: MainAxisAlignment.end,
            ),
          ],
        ),
      ],
    );
  }
}

class SafetyListItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const SafetyListItem({Key? key, required this.text, required this.icon})
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
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Color _getIconColor(IconData icon) {
    switch (icon) {
      case Icons.warning:
        return Colors.orange;
      case Icons.thumb_up:
        return Colors.green;
      case Icons.assignment_turned_in:
        return Colors.blue;
      case Icons.attach_money:
        return Colors.purple;
      case Icons.people:
        return Colors.indigo;
      case Icons.eco:
        return const Color.fromARGB(255, 44, 75, 8);
      case Icons.favorite:
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}

class SafetyListItemWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final MainAxisAlignment iconAlignment;

  const SafetyListItemWithIcon({
    required this.text,
    required this.icon,
    required this.iconColor,
    required this.iconAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 18, 47, 77),
                fontFamily: 'Raleway',
              ),
            ),
          ),
          SizedBox(width: 8),
          Icon(
            icon,
            color: iconColor,
            size: 24,
          ),
        ],
        mainAxisAlignment: iconAlignment,
      ),
    );
  }
}
