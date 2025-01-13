import 'package:facebook_ui/widgets/suggestioncard.dart';
import 'package:flutter/material.dart';

class SuggectionSection extends StatelessWidget {
  const SuggectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
    
    child: Column(
      children: [
        ListTile(
          title:const Text('People you may know'),
          trailing: Icon(Icons.more_horiz,color:Colors.grey.shade700),
        ),
        Container(
        
          height: 340,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const[
              SuggestionCard(
                suggestionImage:  'assets/images.jpeg',
              ),
            SuggestionCard(suggestionImage:  'assets/images.jpeg')
            ],
          ),
        )
      ],
    ),
    ) ;
  }
}