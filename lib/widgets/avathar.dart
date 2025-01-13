import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  final String displayImage;
  final bool displayStatus;
  final bool displayborder;
  final double height;
  final double width;
  const Avatar({super.key,
  required this.displayImage,
  required this.displayStatus,
  this.displayborder =false,
  this.height =50,
  this.width=50,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        padding:const EdgeInsets.only(left: 5,right: 5),
              
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:displayborder? Border.all(
                    color: Colors.blue,
                    width: 3
                  ):const Border()
                ),

        child: ClipRRect(
          
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(displayImage,
                      width: width,
                      height: height,),),
      ),
      displayStatus==true?
          Positioned(
            bottom: 0,
            right: 1,
            child: Container(
            
              height: 15,
              width: 15,
              decoration:  BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2
                )
              ),
            ),
          ):const SizedBox(),
  ] );
  }
}