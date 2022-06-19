import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';

import '../../colors/all colors.dart';
import '../../images/all img.dart';
import '../Ui/Dialog.dart';
import '../Ui/seek bar.dart';


class musicplayer extends StatefulWidget {
  const musicplayer({Key? key}) : super(key: key);

  @override
  State<musicplayer> createState() => _musicplayerState();
}

class _musicplayerState extends State<musicplayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
            children: [
              Container(
                height: 300,
                width:  MediaQuery.of(context).size.width,
                child:Image.asset(artwork,
                fit:BoxFit.cover,
                ),),
              RoundedLinearProgress(
                width: MediaQuery.of(context).size.width,
                strokeWidth: 3.0,
                bgColor: Colors.black,
                fgColor: Colors.white,
                duration: Duration(seconds: 2),
              ),
              SizedBox(height: 20,),
               Column(
                  children: [
                    Container(
                      width:  MediaQuery.of(context).size.width,
                      height:  150,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          // Text("Feeling Arty",style: TextStyle(color: Colors.white,fontSize: 40),),
                            Text("Feeling Arty",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 40),),
                            Text("Farty Arty",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 40),),
                            Text("35  min",style: TextStyle(
                                color: Colors.white54
                              ),),
                        ],),),
                        SizedBox(width: 40,),
                        //Dialog Box
                        IconButton(
                          iconSize: 50,
                            onPressed:(){
                              showDialog(context: context, builder: (BuildContext context){
                                return SimpleDialog(
                                  elevation: 34,
                                  backgroundColor: Colors.black,
                                  children : [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                          child: Row(
                                            children: [
                                              Icon(Icons.music_note,color: Colors.white,),
                                              SizedBox(width: 23,),
                                              Text("Song Credits",style: TextStyle(fontSize: 23,
                                                  color: Colors.white,
                                                  fontStyle: FontStyle.normal
                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Icon(Icons.ios_share,color: Colors.white,),
                                            SizedBox(width: 23,),
                                            Text("Share",style: TextStyle(fontSize: 23,
                                                color: Colors.white,
                                                fontStyle: FontStyle.normal

                                            ),)
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Icon(Icons.queue_music_sharp,color: Colors.white,),
                                            SizedBox(width: 23,),
                                            Text("Add to Playlist",style: TextStyle(fontSize: 23,
                                                color: Colors.white,
                                                fontStyle: FontStyle.normal

                                            ),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              });
                            },
                          icon:Icon(Icons.add_circle),color: Colors.white,)
                      ],
                    ),
                    ),
                    // HomeWidget(),
                   Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(player,fit:BoxFit.contain,)),
                  ],
                ),
            ],
          ),
        ),
    );
  }
}
