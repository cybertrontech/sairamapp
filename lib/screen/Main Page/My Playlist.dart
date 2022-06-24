import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';

import '../../colors/all colors.dart';
import '../../images/all img.dart';

class myplaylist extends StatefulWidget {

  @override
  State<myplaylist> createState() => _myplaylistState();
}
class _myplaylistState extends State<myplaylist> {
  final List<ListTile> items =[
    ListTile(onTap:(){},leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Romantic song",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Sad Music",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Romantic song",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Rock",style: TextStyle(color: textcolor),),subtitle: Text("34 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Romantic song",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Romantic song",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Romantic song",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Romantic song",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Sad Music",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Sad Music",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Sad Music",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Sad Music",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Sad Music",style: TextStyle(color: textcolor),),subtitle: Text("3 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Soul Music)",style: TextStyle(color: textcolor),),subtitle: Text("23 songs",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.linear_scale,color: Colors.white,),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(tune7logoweb,width: 110,height: 140,),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text("My Playlist",
                style: TextStyle(color: textcolor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontSize:20,
                ),),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 341),
              child: RoundedLinearProgress(
                width: 33,
                strokeWidth: 2.0,
                // bgColor: background,
                fgColor: Colors.blue,
                duration: Duration(seconds: 3),
              ),
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(Icons.play_circle_outlined,color: Colors.blue,),
                ),
                SizedBox(width: 10,),
                Text("Create New Playlist",
                  style: TextStyle(color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontSize:15,
                  ),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 410,
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
