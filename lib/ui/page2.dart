import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_project/bloc/display_details.dart';
import 'package:test_project/bloc/registration.dart';

import 'package:test_project/ui/page3.dart';
import 'package:test_project/ui/profile.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var fname=TextEditingController();
  var lname=TextEditingController();
  var phone=TextEditingController();
  var hname=TextEditingController();
  var place=TextEditingController();
  var pin=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            actions: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Andrew_Garfield_by_Gage_Skidmore_%28cropped%29.jpg/330px-Andrew_Garfield_by_Gage_Skidmore_%28cropped%29.jpg")
                ),
              )
            ],
            backgroundColor: Colors.black,
            title: Text("Home",style: TextStyle(fontSize: 16),),
            bottom: const TabBar(
              indicatorColor: Colors.green,
              tabs: [
                Tab(child: Text("Programs"),),
                Tab(child: Text("Booking"),),
              ],

            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.blueGrey,width: 3),
                          //borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.blueGrey,width: 3),
                          //borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.blueGrey,width: 3),
                          //borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Search programs",
                        hintStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,mainAxisSpacing: 10,childAspectRatio:.6
                        ),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
                            },
                            child: Column(
                              children: [
                                Image(image: NetworkImage("https://m.media-amazon.com/images/M/MV5BOTc1MjlkMmUtOWUwYy00Nzk0LWFmNTUtYzFiYTkxZTBkNjYwXkEyXkFqcGdeQXVyODM5ODE1MTA@._V1_.jpg"),),
                                Text("Jungle safari",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          );
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,20),
                      child: Row(
                        children: [
                          Text("Previous Bookings",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w900),),
                          Spacer(),
                          InkWell(
                            child: Row(
                              children: [
                                Text("View all  ",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                                Icon(Icons.account_tree_sharp,color: Colors.white,),
                              ],
                            ),
                            onTap: ()=>{

                            },
                          )
                        ],
                      ),
                    ),
                    //Divider(color: Colors.white,),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context,int index){
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image(image: AssetImage("assets/tiger.png"),height: 100,width: 100,),
                                    Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: [
                                        Container(width:MediaQuery.of(context).size.width*.6, child: Text("Combo Package Jungle Safari",style: TextStyle(color: Colors.white),overflow: TextOverflow.fade,maxLines: 3)),
                                        Text("Indian adult  Foreign student ",style: TextStyle(color: Colors.blueGrey),),
                                        Text("March 11,2022     8:30-10:30",style: TextStyle(color: Colors.green),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Divider(color: Colors.white,),
                            ],
                          );
                        }
                    ),
                  ],
                ),
              ),
              Column(
                children: [],
              )
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,100.0,0,0),
              child: Column(
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
                  MaterialButton(
                    onPressed: () {
                      BlocProvider.of<RegBloc>(context).add(CheckOTP(
                        fname: fname.text,
                        lname:lname.text,
                        phone: phone.text,
                        hname: hname.text,
                        place: place.text,
                        pin: pin.text,
                        password: pass.text
                      ));
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                    },
                    color: Colors.green,
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width,
                    child: BlocConsumer<RegBloc, RegState>(
                      builder: (context, state) {
                        if (state is CheckingOtp) {
                          return Container(
                            height: 22,
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return Text(
                            "Log in",
                            style: TextStyle(fontSize: 14),
                          );
                        }
                      },
                      listener: (context, state) {
                        if (state is OtpChecked) {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                        } else if (state is OtpError) {
                          Fluttertoast.showToast(
                            msg: state.error,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
