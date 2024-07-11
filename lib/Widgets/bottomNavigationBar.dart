import 'package:clone_facebook_project/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class BottomNavigationBarFace extends StatefulWidget {
   BottomNavigationBarFace({super.key});

  @override
  State<BottomNavigationBarFace> createState() => _BottomNavigationBarFaceState();
}

class _BottomNavigationBarFaceState extends State<BottomNavigationBarFace> {




int index=0;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        currentIndex: index,
        items: const [
      BottomNavigationBarItem(
          icon:Icon(Icons.home_filled,size: 35,),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(Feather.youtube,size: 35,),
          label: ""),
      BottomNavigationBarItem(
          icon:  Icon(Icons.people_outline,size: 38,),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(Linecons.shop,size: 30,),
          label: ""),
      BottomNavigationBarItem(
          icon:  Icon(Feather.bell,size: 33,),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu,size: 36,),
          label: ""),
    ]);

  }
}
