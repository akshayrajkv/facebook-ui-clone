import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avathar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          const Avatar(
            displayImage: dulqur,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: mammmoty,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: chako,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: naslen,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: dulqur,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: mammmoty,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: chako,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          const Avatar(
            displayImage: naslen,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return OutlinedButton.icon(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          const BorderSide(color: Colors.blue),
        ), // Adjust color as needed
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ), // Adjust radius as needed
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: const Text(
        "Create \nRoom",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
