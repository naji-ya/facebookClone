import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../Widgets/Profileview.dart';
import '../Widgets/Storycontainer.dart';
import '../Widgets/bottomNavigationBar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: FacebookHome(),
  ));
}

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w900,
            color: Colors.blue[800],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/add.png",
              height: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/searchicon.png",
              height: 34,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/messenger.png"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarFace(),
      body: ListView(
        children: [
          ProfileView(),
          Divider(
            thickness: 4.5,
            color: Colors.grey[500],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 StoryContainer(backgroundImages: DecorationImage(image: AssetImage("assets/parvathy_.jpg"),fit: BoxFit.fill),
                     avatarImages: AssetImage("assets/parvathy1.webp"), name:Text( "Parvathy \n Thiruvoth",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(
                    width: 10,
                  ),
            StoryContainer(backgroundImages:
            DecorationImage(image: AssetImage("assets/amala.jpg"),fit: BoxFit.fill), avatarImages: AssetImage("assets/amala_paul_wedding.jpg"), name:Text( "Amala \n Paul",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
                  SizedBox(
                    width: 10,
                  ),
                  StoryContainer(backgroundImages:
                  DecorationImage(image: AssetImage("assets/Samvrutha-Sunil.jpg"),fit: BoxFit.fill), avatarImages: AssetImage("assets/sm.webp"), name:Text( "Samrutha \n Sunil",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 220,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("assets/Indrajith-film.jpg"),
                              fit: BoxFit.fill)),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/Indrajith.jpg"),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 4.5,
            color: Colors.grey[500],
          ),
          SingleChildScrollView(
 scrollDirection: Axis.vertical,
             child: Container(
//
       width: 20,
                height: 400,
                child: Stack(
                  children: [
                    Positioned(child:
                    CircleAvatar(backgroundImage:
                    AssetImage("assets/Samvrutha-Sunil.jpg"),),
                      top: 16,
                      left: 16,),
                    Positioned(child: Text("Smritha Sunil",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                      top: 14,
                      left:68,),
                    Positioned(child: Text("5h . ",style: TextStyle(color: Colors.black38),),
                      top: 34,
                      left: 68,),
                    Positioned(child: Icon(FlutterIcons.google_earth_mco,size: 15,color: Colors.black38,),
                      top: 34,
                      left: 94,),
                    Positioned(child: Text(" This time, in the picture, the gorgeous"
                        "  actress is seen \nwearing a casual top and pants. Samvritha Sunil is seen \n flaunting her "
                        "million-dollar smile and it only took a "
                      ,style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold),),
                      top: 70,
                      left:16,),

                    Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.black38,)),
                      top: 2,
                      right: 30,),
                    Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.close,color: Colors.black38,)),
                      top: 2,
                      right: 1,),
                    Positioned(child:
                    Image(image: AssetImage("assets/smruthaFam.jpg"),),
                      top: 130,
                    )
                  ],
                ),
              ),


          ),
        ],
      ),
    );
  }
}
