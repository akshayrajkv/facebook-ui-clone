import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          StoryCard(
            labeltext: 'Add to story',
            story: 'assets/images.jpeg',
            avatar: dulqur,
            createstorystatus: true,

            
          ),
          StoryCard(
            labeltext: 'Dulqur',
            story: 'assets/images.jpeg',
            avatar: mohanlal,
            displayborder: true,
          ),
          StoryCard(
            labeltext: 'Add to story',
            story: 'assets/images.jpeg',
            avatar: mammmoty,
            displayborder: true,
          ),
          StoryCard(
            labeltext: 'Add to story',
            story: 'assets/images.jpeg',
            avatar: naslen,
            displayborder: true,
          ),
          StoryCard(
            labeltext: 'Add to story',
            story: 'assets/images.jpeg',
            avatar: chako,
            displayborder: true,
          ),
        ],
      ),
    );
  }
}
