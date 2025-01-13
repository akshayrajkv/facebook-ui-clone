import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String suggestionImage;
  
  const SuggestionCard({super.key,
  required  this.suggestionImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      width: 300,
      child: Stack(
        children: [
          suggectionImage(),
          suggectionDetails(),
        ],
      ),
    );
  }

  Widget suggectionDetails() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 100,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              ListTile(
                title: const Text('Dulqur salman'),
                subtitle: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          
                          ),
                        ),
                        onPressed: () {},
                        icon:const Icon(Icons.account_box),
                        label:const Text('Add Feiend'),
                      ),
                      ElevatedButton(onPressed: (){}, child: Text('remove'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side:const BorderSide(
                              color: Colors.black,
                              width: 1,
                            )
                        )
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget suggectionImage(
    
  ) {
    return Positioned(
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
           suggestionImage,
            fit: BoxFit.cover,
          )),
      top: 0,
      left: 0,
      right: 0,
    );
  }
}
