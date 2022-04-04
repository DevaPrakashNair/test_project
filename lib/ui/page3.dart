import 'package:flutter/material.dart';
import 'package:test_project/ui/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  Color color=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text("Jungle safari"),

        actions: [
          CircleAvatar(
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Andrew_Garfield_by_Gage_Skidmore_%28cropped%29.jpg/330px-Andrew_Garfield_by_Gage_Skidmore_%28cropped%29.jpg")
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: AssetImage("assets/Mask Group 2.png"),height: 100,width: 100,),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Container(width:MediaQuery.of(context).size.width*.6, child: Text("Jungle Safari",style: TextStyle(color: Colors.white,fontSize: 28),overflow: TextOverflow.fade,maxLines: 3)),
                    Text("Booking available",style: TextStyle(color: Colors.green),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));

                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Colors.green,
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width/1.5,
                        child: Text("BOOK NOW",style: TextStyle(fontSize: 14),),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,0,0),
              child: Column(
                children: [
                  Text("Package Rate",style: TextStyle(color: Colors.white,fontSize: 16),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueGrey
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Text("Week Days",style: TextStyle(color: Colors.white)),
                          Text("350INR",style: TextStyle(color: Colors.white) ,),
                          Text("Indian",style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Text("350INR",style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Text("350INR",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueGrey
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Text("Weekends & Holidays",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                          Text("350INR",style: TextStyle(color: Colors.white) ,),
                          Text("Indian",style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Text("350INR",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Text("350INR",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueGrey
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Text("Weekends & Holidays",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                          Text("350INR",style: TextStyle(color: Colors.white) ,),
                          Text("Indian",style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Text("350INR",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Text("350INR",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}