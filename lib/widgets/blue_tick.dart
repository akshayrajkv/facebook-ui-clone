import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  const BlueTick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration:const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child:const Icon(Icons.check,size: 10,color: Colors.white,),
    );
  }
}