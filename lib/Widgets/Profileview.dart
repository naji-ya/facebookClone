import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(borderRadius: BorderRadius.circular(50),
          child: Image(image:AssetImage("assets/prithviraj.jpg"),)),

      title: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          hintText: "What's  on  your  mind?",
          hintStyle: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,
          fontSize: 17)
        ),
      ),
      trailing: Image.asset("assets/gallery.png",color:Colors.green[600],
      height: 33,)
    );
  }
}
