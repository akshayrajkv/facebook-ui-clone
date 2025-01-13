import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData buttonIcon;
   final Color iconcolor;
  final void Function () buttonAction;
   CircleButton({super.key,
  required this.buttonIcon,
  required this.buttonAction,
  this.iconcolor =Colors.black
 });

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(shape: BoxShape.circle,
            color: Color.fromARGB(255, 230, 227, 227)),
            child: IconButton(onPressed: buttonAction, icon:Icon(buttonIcon,
            color: iconcolor,)),
          );
  }
}