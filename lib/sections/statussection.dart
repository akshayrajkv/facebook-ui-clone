import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avathar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin:const EdgeInsets.all(5),
              height: 50,
              child:const ListTile(
                leading: Avatar(displayImage:dulqur,displayStatus: false,),
                  title: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  )
              ),
            );
  }
}