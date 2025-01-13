import 'package:flutter/material.dart';

hederButton({
    required Function() buttonpressed,
    required IconData buttonIcon,
    required String labeltext,
    required Color buttoncolor,
    

  }) {
    return TextButton.icon(
        onPressed: buttonpressed,
        icon: Icon(
          buttonIcon,
          color: buttoncolor,
        ),
        label: Text(labeltext,
        style:const TextStyle(
          color: Colors.black,
        ),));
  }