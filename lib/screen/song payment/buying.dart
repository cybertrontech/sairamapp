import 'package:flutter/material.dart';
import 'package:tunesevenui/colors/all%20colors.dart';
import 'package:tunesevenui/images/all%20img.dart';




class buying extends StatefulWidget {
  const buying({Key? key}) : super(key: key);
  @override
  State<buying> createState() => _buyingState();
}

class _buyingState extends State<buying> {
  final List<ListTile> items =[
    ListTile(leading:Image.asset(Khalti,),title:Text("NRP. 250",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),subtitle: Text("Pay via eSewa",style: TextStyle(color:Colors.black45,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
    ListTile(leading:Image.asset(paypal),title:Text("NRP. 250",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),subtitle: Text("Pay via eSewa",style: TextStyle(color:Colors.black45,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
    ListTile(leading:Image.asset(Khalti),title:Text("NRP. 250",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),subtitle: Text("Pay via eSewa",style: TextStyle(color:Colors.black45,fontSize: 12),),trailing: Icon(Icons.add,color: Colors.white,),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Container(
              child: Text("Rapture by Balen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Container(
              width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Image.asset(image,fit: BoxFit.contain,)),
            SizedBox(height: 20,),
            Column(
              children: [
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue,
                      focusColor: Colors.black,
                      icon: Icon(Icons.call_end_outlined,color: Colors.black,),
                      hintText: "Number",
                      labelText: "Enter The Number",
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue,
                      focusColor: Colors.black,
                      icon: Icon(Icons.location_on_outlined,color: Colors.black,),
                      hintText: "Delivery Address",
                      labelText: "Enter Your Address",
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 55,left: 75),
                  child: Text(textAlign: TextAlign.left,"Enter your phone number & Delivery Address to get physical cover art of the album you are buying.",style: TextStyle(color: Colors.black45,fontSize: 10,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 23,),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: items.length,
                        itemBuilder: (context,index){
                          return Card(
                            color: Colors.white,
                            elevation: 6,
                            child: ListTile(
                              onTap: (){},
                                trailing: items[index].trailing,
                                leading: items[index].leading,
                                title: items[index].title,
                                subtitle: items[index].subtitle
                            ),
                          );
                        }),
                  ),
                ),    ],
            )
          ],
        ),
      ),
    );
  }
}
