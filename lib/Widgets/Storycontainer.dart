import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: StoryContainer(backgroundImages:DecorationImage(image: AssetImage("assetName")),
//       avatarImages: AssetImage("assetName"), name: Text("") ,),
//   ));
//}

class StoryContainer extends StatelessWidget {
  final DecorationImage backgroundImages;
  final ImageProvider avatarImages;
  final Text name;

  const StoryContainer(
      {super.key,
      required this.backgroundImages,
      required this.avatarImages,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return    Container(
          height: 220,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: backgroundImages,),
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: avatarImages,
              ),Positioned(
                child: name,
                bottom: 10,
                left: 20,
              )
            ],
          )
    );
  }
}
