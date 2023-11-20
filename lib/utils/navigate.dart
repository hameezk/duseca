import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget nextScreen) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return nextScreen;
    },
  ));
}