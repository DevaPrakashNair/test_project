import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  var fname=TextEditingController();
  var lname=TextEditingController();
  var phone=TextEditingController();
  var hname=TextEditingController();
  var place=TextEditingController();
  var pin=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
        Text("Firstname: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: fname,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      Text("Lastname: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: lname,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      Text("Phone: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: phone,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      Text("House name: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: hname,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      Text("Place: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: place,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      Text("Pincode: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: pin,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      Text("Password: ",style: TextStyle(color: Colors.white),),
      TextField(
        controller: pass,
        style: TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blueGrey, width: 3),
            //borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    ]
      )
    );
  }
}
