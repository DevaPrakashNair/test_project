import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Jungle Safari",style: TextStyle(color: Colors.white,fontSize: 16),),
        actions: [
          CircleAvatar(
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Andrew_Garfield_by_Gage_Skidmore_%28cropped%29.jpg/330px-Andrew_Garfield_by_Gage_Skidmore_%28cropped%29.jpg")
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Booking summary",style: TextStyle(color: Colors.white),),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Text("hello",style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
