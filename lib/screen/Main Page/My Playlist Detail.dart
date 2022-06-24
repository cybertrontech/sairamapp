import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../colors/all colors.dart';
import '../../images/all img.dart';


class PlaylistDetail extends StatefulWidget {
  const PlaylistDetail({Key? key}) : super(key: key);

  @override
  State<PlaylistDetail> createState() => _PlaylistDetailState();
}

class _PlaylistDetailState extends State<PlaylistDetail> {
  final List<ListTile> items =[
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampage (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Rampag (Title Track)",style: TextStyle(color: textcolor),),subtitle: Text("Rampage 2016",style: TextStyle(color:subtext,fontSize: 12),),),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: PageScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(tune7logoweb,width: 150,height: 190,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [Icon(Icons.headset_mic_outlined,color: subtext,),SizedBox(height: 10,),Text("Edit Playlist",style: TextStyle(color: subtext),)],),
               SizedBox(width: 20,),
                Image.asset(mask
                  ,height: 140,),
                SizedBox(width: 20,),
                Column(children: [Icon(Icons.music_off_outlined,color:subtext,),SizedBox(height: 10,),Text("Add Songs",style: TextStyle(color: Colors.white38),)],),
              ],
            ),
            SizedBox(height: 20,),
            Text("Rock",style: TextStyle(color: Colors.white,fontSize:28,fontWeight: FontWeight.bold)),
            Text("20 Songs",style: TextStyle(color: Colors.white38,fontSize:12,fontWeight: FontWeight.bold)),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 310,
              child: ListView.separated(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                separatorBuilder: (context,index){
                  final currentitems = items[index+1];
                  return ListTile(
                    onTap: (){},
                    leading: currentitems.leading,
                    title: currentitems.title,
                    subtitle:currentitems.subtitle,
                    trailing: currentitems.trailing,
                  );
                }, itemBuilder: (BuildContext context, int index) =>
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 16),
                    child: Divider(color: Colors.white38,),
                  ),),
            ),
          ],

        ),
      ),
    );
  }
}
