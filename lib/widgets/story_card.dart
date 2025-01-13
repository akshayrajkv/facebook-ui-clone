import 'package:facebook_ui/widgets/avathar.dart';
import 'package:facebook_ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool createstorystatus;
  final bool displayborder;

  const StoryCard(
      {super.key,
      required this.labeltext,
      required this.story,
      required this.avatar,
      this.createstorystatus = false,
      this.displayborder = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15)),
        ),
        Positioned(
          left: 10,
          top: 15,
          child: createstorystatus
              ? CircleButton(
                  buttonIcon: Icons.add,
                  buttonAction: () {},
                  iconcolor: Colors.blue)
              : Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  displayborder: displayborder),
        ),
        Positioned(
          bottom: 18,
          left: 15,
          child: Text(
            labeltext,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
