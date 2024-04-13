import 'package:flutter/material.dart';

class formValidator {
  static String? Emailvalidator(String? val) {
    if (val == Null || val!.isEmpty) {
      return ('Email is required');
    }
  }

  static String? Passvalidator(String? val) {
    if (val == Null || val!.isEmpty) {
      return ('Email is required');
    } else if (val.length < 6) {
      return ('password should be atleast of 6 charactors');
    } else if (!val.contains(RegExp(r'[A-Z]'))) {
      return ("Password must contain at One uppercase letter");
    } else if (!val.contains(RegExp(r'[a-z]'))) {
      return ("Password must contain at One lower letter");
    }
  }

  static String? EmpytFieldvedlidator(String? val) {
    if (val == Null || val!.isEmpty) {
      return ('Field is required');
    }
  }
}
