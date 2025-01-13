import 'package:facebook_ui/sections/hederbuttonsection.dart';
import 'package:facebook_ui/widgets/avathar.dart';
import 'package:facebook_ui/widgets/blue_tick.dart';
import 'package:facebook_ui/widgets/hederbutton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedat;
  final String posttitile;
  final String postimage;
  final bool showbluetick;
  final String likecount;
  final String commentcount;
  final String sharecount;
  const PostCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.publishedat,
      required this.posttitile,
      required this.postimage,
      
      this.showbluetick = false,
      required this.likecount,
      required this.commentcount,
      required this.sharecount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHedar(),
          postCardTitile(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
            HederButtonSection(
                buttonone: hederButton(
                    buttonpressed: () {},
                    buttonIcon: Icons.thumb_up_alt_outlined,
                    labeltext: 'like',
                    buttoncolor: Colors.grey.shade700),
                buttontwo: hederButton(
                    buttonpressed: () {},
                    buttonIcon: Icons.message_outlined,
                    labeltext: 'comment',
                    buttoncolor: Colors.grey.shade700),
                buttonthree: hederButton(
                    buttonpressed: () {},
                    buttonIcon: Icons.share_outlined,
                    labeltext: 'share',
                    buttoncolor: Colors.grey.shade700),),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
  
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 10,
                    )),
                displayText(label: likecount)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentcount),
            const   SizedBox(width: 5,),
                displayText(label: 'comments'),
                const SizedBox(
                  width: 5,
                  
                ),
                displayText(label: sharecount),
            const    SizedBox(width: 5,),
                displayText(label: 'shares'),
                Avatar(
                    displayImage: avatar, displayStatus: false,
                    height: 15,
                    width: 15,)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey.shade700),
    );
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage),
    );
  }

  Widget postCardTitile() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        posttitile,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 26,
        ),
      ),
    );
  }

  Widget postCardHedar() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          const SizedBox(
            width: 5,
          ),
          showbluetick ? const BlueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedat),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            color: Colors.grey.shade700,
            size: 15,
          )
        ],
      ),
      trailing:
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
    );
  }
}
