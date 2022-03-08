// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "";
  String? nameMessage = "";

  void checkEligibility(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessage = "You are Eligible!";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = "You are not eligible!";
      notifyListeners();
    }
  }

  void checkName(String a) {
    if (a == "Davinder") {
      isEligible = true;
      nameMessage = "You'rs Welcome";
      notifyListeners();
    } else {
      isEligible = false;
      nameMessage = "You are not Allowed Here.";
      notifyListeners();
    }
  }
}
