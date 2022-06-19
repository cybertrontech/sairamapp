import 'package:flutter/material.dart';
import 'package:tunesevenui/colors/all%20colors.dart';

import '../../images/all img.dart';


class Singleplaylist extends StatelessWidget {
  final List<ListTile> items =[

    ListTile(
      leading:Icon(
      Icons.play_circle_outlined,size: 30,color: subtext,),
      title:Text("Play Now",style: TextStyle(color: textcolor),),),
    ListTile(leading:Icon(Icons.mark_chat_unread_outlined,size: 30,color: subtext,),title:Text("Mark As Favorite",style: TextStyle(color: textcolor),),),
    ListTile(leading:Icon(Icons.share,size: 30,color: subtext),title:Text("Share",style: TextStyle(color: textcolor),),),
    ListTile(leading:Icon(Icons.photo_album_outlined,size: 30,color: subtext,),title:Text("Details",style: TextStyle(color: textcolor),),),
    ListTile(leading:Icon(Icons.remove_circle_outline,size: 30,color: subtext,),title:Text("Go to Album",style: TextStyle(color: textcolor),),),
    ListTile(leading:Icon(Icons.queue_play_next_rounded,size: 30,color: subtext,),title:Text("Remove From Playlist",style: TextStyle(color: textcolor),),),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body:Container(
          child: Stack(
            children: [
            Container(
              color: Colors.black,
            ),
               Container(
                  color: Colors.white10,
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                 child: Column(
                   children: [
                       Image.asset(tune7logoweb,width: 100,height: 130,),
                   ],
                 ),
                ),
              Positioned(
                top: 145,
                left: 140,
                child: Column(
                  children: [
                    Image.asset(artistalbum02,width: 130,),
                    Text("Funeral",style: TextStyle(color: textcolor,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Lil Wayne",style: TextStyle(color: subtext,fontSize: 12),)
                  ],
                )
              ),
              Positioned(
                top:300,
                left: 20,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: items.length,
                      itemBuilder: (context,index){
                        return ListTile(
                            trailing: items[index].trailing,
                            leading: items[index].leading,
                            title: items[index].title,
                            subtitle: items[index].subtitle
                        );
                      }),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
