import 'package:flutter/material.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';
import 'package:tunesevenui/colors/all%20colors.dart';


import '../../images/all img.dart';


class Artist extends StatelessWidget {

  final List<ListTile> items =[
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Kripas",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Dipendra",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Yugal",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artist123),),title:Text("Pasang",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(tune7logoweb,width: 110,height: 140,),
            Container(
              width: 210,
              child: Image.asset(artistalbum03),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 40,left: 40),
              child: Container(
                width:350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Rapture by Balen",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: textcolor,
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    SizedBox(height: 12,),
                    RoundedLinearProgress(
                      width: 14,
                      strokeWidth: 3.0,

                      fgColor: Colors.blue ,
                      duration: Duration(seconds: 2),
                    ),
                    SizedBox(height: 12,),
                    Container(
                      child: Text("Rapture by balen"
                          ",asdkjbahscbmsc asasgjhkdnf vmdfnkndfd dkfhg df d fngkdf ndfklgnkdj fd gabjvv visd jhdbv dskjv sd ashcjasjh assd asdas jaksbjkasbc  kjBCJksbc  ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          color: subtext,
                          decoration: TextDecoration.none,
                          fontSize: 13,
                        ),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),
              child:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child:ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  separatorBuilder: (context,index){
                    return ListTile(
                      onTap: (){},
                      leading: CircleAvatar(
                        child: items[index].leading,
                      ),
                      title: items[index].title,
                      subtitle: items[index].subtitle,
                      trailing: items[index].trailing,
                    );
                  }, itemBuilder: (BuildContext context, int index) =>
                    Divider(color: Colors.white38,indent: 19,endIndent: 20,),),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

