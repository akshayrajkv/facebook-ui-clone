import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/hederbuttonsection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statussection.dart';
import 'package:facebook_ui/sections/story_section.dart';
import 'package:facebook_ui/sections/suggestionsection.dart';
import 'package:facebook_ui/widgets/circle_button.dart';
import 'package:facebook_ui/widgets/hederbutton.dart';
import 'package:facebook_ui/widgets/post_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      color: Colors.grey.shade300,
      thickness: 1,
    );
    Widget thickdivider = Divider(
      thickness: 10,
      color: Colors.grey.shade300,
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          actions: [
            CircleButton(
              buttonIcon: Icons.search,
              buttonAction: () {},
            ),
            CircleButton(
              buttonIcon: Icons.chat,
              buttonAction: () {},
            )
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thindivider,
            HederButtonSection(
              buttonone: hederButton(
                  buttonpressed: () {},
                  buttonIcon: Icons.video_call,
                  labeltext: 'Live',
                  buttoncolor: Colors.red),
              buttontwo: hederButton(
                  buttonpressed: () {},
                  buttonIcon: Icons.photo_library,
                  labeltext: 'Photo',
                  buttoncolor: Colors.green),
              buttonthree: hederButton(
                  buttonpressed: () {},
                  buttonIcon: Icons.video_call,
                  labeltext: 'Room',
                  buttoncolor: Colors.purple),
            ),
            thickdivider,
            const RoomSection(),
            thickdivider,
            const StorySection(),
            thickdivider,
            const PostCard(
              avatar: mammmoty,
              name: 'Mammoty',
              postimage: 'assets/diwali.jpg',
              posttitile: 'Happy Diwali',
              showbluetick: true,
              publishedat: '5 h',
              likecount: '10k',
              commentcount: '1k',
              sharecount: '500',
            ),
            thickdivider,
            const PostCard(
              avatar: chako,
              name: 'Kunchako gopan',
              postimage: 'assets/diwali.jpg',
              posttitile: 'Happy Diwali',
              showbluetick: true,
              publishedat: '5 h',
              likecount: '10k',
              commentcount: '1k',
              sharecount: '500',
            ),
            thickdivider,
        const   SuggectionSection(),
        thickdivider,
            const PostCard(
              avatar: naslen,
              name: 'Naslen Gaffor',
              postimage: 'assets/diwali.jpg',
              posttitile: 'Happy Diwali',
              showbluetick: true,
              publishedat: '5 h',
              likecount: '10k',
              commentcount: '1k',
              sharecount: '500',
            ),
            thickdivider,
            const PostCard(
              avatar: mohanlal,
              name: 'Mohan lal',
              postimage: 'assets/diwali.jpg',
              posttitile: 'Happy Diwali',
              showbluetick: true,
              publishedat: '5 h',
              likecount: '10k',
              commentcount: '1k',
              sharecount: '500',
            ),
            
          ],
        ));
  }
}
