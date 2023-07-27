// custom Backbutton delegate
import 'package:flutter/material.dart';

// ignore: public_member_api_docs
class CustomBackButtonDispatcher extends RootBackButtonDispatcher {
  // ignore: public_member_api_docs
  CustomBackButtonDispatcher({required this.onBackButtonPressed});

  // ignore: public_member_api_docs
  final VoidCallback onBackButtonPressed;

  @override
  Future<bool> didPopRoute() async {
    onBackButtonPressed.call();
    return true;
  }
}
