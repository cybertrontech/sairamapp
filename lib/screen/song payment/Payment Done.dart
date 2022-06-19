import 'package:flutter/material.dart';

import '../../colors/all colors.dart';
import '../../images/all img.dart';



class Payment extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(tune7logoweb,width: 120,height: 190,),
            Container(child: Image.asset(thanku_img,width: 150,)),
            SizedBox(height: 12,),
            Expanded(
              child: Container(
                width: 320,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(  color: Colors.white10,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(23),topLeft: Radius.circular(23),
                  ),
              ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.check_circle,size:100,color: Colors.blue,),
                    ),
                  Text("Thanks for Purchasing!",style: TextStyle(color: textcolor,fontSize:19,fontWeight: FontWeight.bold)),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 65,right: 65),
                      child: Text("You can play the purchased iteam from Your Library",
                       textAlign: TextAlign.center,
                        style: TextStyle(color:subtext,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      elevation: 10.0,
                      minWidth: 200.0,
                      height: 35,
                      onPressed: (){},
                      color: Colors.blue,
                      child: Text("Continue Shopping",style: TextStyle(color: textcolor,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
            )
           ),
          ],
        ),
      ),
    );
  }
}
