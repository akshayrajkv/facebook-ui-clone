import 'package:flutter/material.dart';

class HederButtonSection extends StatelessWidget {
  final Widget buttonone;
  final Widget buttontwo;
  final Widget buttonthree;
  
  HederButtonSection({super.key,
  required this.buttonone,
  required this.buttontwo,
  required this.buttonthree});

  

  final Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey.shade300,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      buttonone,
      verticalDivider,
      buttontwo,
      verticalDivider,
      buttonthree,
        ],
      ),
    );
  }
}
