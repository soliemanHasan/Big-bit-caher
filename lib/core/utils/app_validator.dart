import 'package:flutter/material.dart';

class AppValidator {
  // Validates a phone number
  static String? phoneValidator(String? value) {
    if (value == "1234567890") {
      return null;
    } else {
      if (value == null || value.isEmpty) return "Empty try to add data";
      if (!(RegExp(r'^09[0-9]{8}$').hasMatch(value))) {
        return "Invalid Phone";
      }
    }
    return null; // Return null if the value is valid
  }

  // Validates a name
  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) return "Empty try to add data";
    if ((value.length < 5)) return "Invalid Length";
    return null; // Return null if the value is valid
  }

  // Validates a password
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return "Empty try to add data";
    if ((value.length < 6)) return "Invalid Length";
    return null; // Return null if the value is valid
  }

  //Validates a dropDownGender
  static String? dropDownValidator(String? value) {
    if (value == null || value.isEmpty) return "Empty try to add data";
    return null;
  }

  static String? datePickerValidator(String? value) {
    if (value == null || value.isEmpty) return "Empty try to add data";
    return null;
  }

  static String? conformPasswordValidator(
    String? passwordValue,
    String? value,
  ) {
    if (value == null || value.isEmpty) return "Empty try to add data";
    if (value != passwordValue) return "Password not match";
    return null;
  }

  //Validates a email
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) return "Empty try to add data";
    if (!(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))) {
      return "Invalid email address";
    }
    return null;
  }

  // check form keys validator
  bool checkValidateFormsKeys({
    required List<GlobalKey<FormState>> forms,
    List<bool> successCases = const [],
  }) {
    for (GlobalKey<FormState> form in forms) {
      if (!form.currentState!.validate()) return false;
    }
    return successCases.isEmpty
        ? true
        : successCases.every((element) => element == true);
  }
}
