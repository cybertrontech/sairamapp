import 'package:flutter/material.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';

import '../../colors/all colors.dart';
import '../../images/all img.dart';



class Discography extends StatefulWidget {

  @override
  State<Discography> createState() => _DiscographyState();
}
class _DiscographyState extends State<Discography> {
  final List<ListTile> items =[
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Kripas",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum01),),title:Text("Dipendra",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color:subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum02),),title:Text("Yugal",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artist123),),title:Text("Pasang",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color:subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artistalbum03),),title:Text("Basanta",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color: subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artist123),),title:Text("Pasang",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color:subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artist123),),title:Text("Pasang",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color:subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artist123),),title:Text("Pasang",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color:subtext,),),
    ListTile(leading:CircleAvatar(child: Image.asset(artist123),),title:Text("Pasang",style: TextStyle(color: textcolor),),subtitle: Text("2010",style: TextStyle(color:subtext,fontSize: 12),),trailing: Icon(Icons.my_library_music,color:subtext,),),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(tune7logoweb,width: 110,height: 140,),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 40,
                        child: Image.asset(artist123,width: 190,height: 150,)),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lil Wayne",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: textcolor,
                                  decoration: TextDecoration.none,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ),),
                            SizedBox(height: 10,),
                            Text("Dwayne Michael Certer Jr.(bor)Dwayne Jr.(cborn Sep)Dwayne Michael Certer Jr.(cborn Sep)Dwayne Michael Certer Jr.(cborn Sep)",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: subtext,
                                decoration: TextDecoration.none,
                                fontSize: 13,
                              ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ///Discography
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text("Discography",
                  style: TextStyle(color: textcolor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontSize:18,
                  ),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 340),
                child: RoundedLinearProgress(
                  width: 30,
                  strokeWidth: 3.0,
                  // bgColor: Colors.black,
                  fgColor: Colors.blue,
                  duration: Duration(seconds: 4),
                ),
              ),
              ///Discography
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: SizedBox(
                    height: 205.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 160.0,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape:BoxShape.circle
                                ),
                                child: Image.asset(artistalbum01),),
                              SizedBox(height: 7,),
                              Text("Funeral",
                                  style:TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: textcolor,
                                      fontWeight: FontWeight.bold

                                  )),
                              SizedBox(height: 5,),
                              Text("2016",
                                  style:TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: subtext,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 160.0,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape:BoxShape.circle
                                ),
                                child: Image.asset(artistalbum02),),
                              SizedBox(height: 7,),
                              Text("Jumanji",
                                  style:TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: textcolor,
                                      fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height: 5,),
                              Text("2019",
                                  style:TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: subtext,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 160.0,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape:BoxShape.circle
                                ),
                                child: Image.asset(artistalbum03),),
                              SizedBox(height: 7,),
                              Text("G.l. Jeo",
                                  style:TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: textcolor,
                                      fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height: 5,),
                              Text("2014",
                                  style:TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: subtext,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 160.0,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape:BoxShape.circle
                                ),
                                child: Image.asset(artistalbum01),),
                              SizedBox(height: 7,),
                              Text("Funeral",
                                  style:TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: textcolor,
                                      fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height: 5,),
                              Text("2016",
                                  style:TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: subtext,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 160.0,
                          color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape:BoxShape.circle
                                ),
                                child: Image.asset(artistalbum01),),
                              SizedBox(height: 7,),
                              Text("Funeral",
                                  style:TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: textcolor,
                                      fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height: 5,),
                              Text("2016",
                                  style:TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: subtext,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
              ),
              ///Uploads
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text("Uploads",
                  style: TextStyle(color: textcolor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontSize:15,
                  ),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 340),
                child:  RoundedLinearProgress(
                  width: 30,
                  strokeWidth: 3.0,
                  // bgColor: Colors.black,
                  fgColor: Colors.blue,
                  duration: Duration(seconds: 4),
                ),
              ),
              SizedBox(height: 18,),
              ///Uploads

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child:ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  separatorBuilder: (context,index){
                    return ListTile(
                      onTap: (){},
                      leading: CircleAvatar(
                        radius: 20,
                        child: items[index].leading,
                      ),
                      title: items[index].title,
                      subtitle: items[index].subtitle,
                      trailing: items[index].trailing,
                    );
                  }, itemBuilder: (BuildContext context, int index) =>
                    Divider(color: Colors.white38,indent: 19,endIndent: 20,),),
              ),
            ],
          ),
        ],
        // physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
      ),
    );
  }
}


