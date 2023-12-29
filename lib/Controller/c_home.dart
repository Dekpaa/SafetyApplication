import 'dart:collection';
import 'package:safetyapps/Model/model.dart';
import 'package:safetyapps/screen/safety_screen.dart';
import 'package:safetyapps/screen/emergency_screen.dart';
import 'package:safetyapps/screen/ppe_screen.dart';
import 'package:safetyapps/screen/safetycode_screen.dart';
import 'package:safetyapps/screen/sign_screen.dart';
import 'package:safetyapps/screen/training_screen.dart';

class ControllerHome {
  static List<ModelHome> _dataHome = [
    ModelHome(
      image: 'assets/images/iconsafety.png',
      title: 'SAFETY FIRST',
      page: SafetyScreen(),
    ),
    ModelHome(
      title: 'TRAINING',
      image: 'assets/images/icontraining.png',
      page: TrainingScreen(),
    ),
    ModelHome(
      title: 'PPE',
      image: 'assets/images/iconppe.png',
      page: ppeScreen(),
    ),
    ModelHome(
      title: 'EMERGENCY',
      image: 'assets/images/iconemergency.png',
      page: EmergencyScreen(),
    ),
    ModelHome(
      title: 'E-SAFETY CODE',
      image: 'assets/images/iconbook.png',
      page: SafetyCode(),
    ),
    ModelHome(
      title: 'SAFETY SIGNAGE',
      image: 'assets/images/iconsign.png',
      page: SignageScreen(),
    ),
    
  ];

  static UnmodifiableListView<ModelHome> get dataHome =>
      UnmodifiableListView(_dataHome);

  static int get dataLength => _dataHome.length;
}