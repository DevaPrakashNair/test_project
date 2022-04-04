import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_project/bloc/firstbloc.dart';
import 'package:test_project/ui/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var phoneController = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/1.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 53,
              ),
              Text(
                "PARAMBIKULAM",
                style: TextStyle(
                    color: Colors.white, fontSize: 23, fontFamily: "Font"),
              ),
              Text(
                "TIGER RESERVE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text(
                "Please Login to Continue",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                  TextField(
                    controller: phoneController,
                    style: TextStyle(color: Colors.white),
                    decoration: new InputDecoration(
                      suffixIcon: Image.asset("assets/2.png"),
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
                  Text(
                    "Password",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                  TextField(
                    controller: passwordcontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: new InputDecoration(
                      suffixIcon: Image.asset("assets/3.png"),
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget password?",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(CheckOTP(
                      phone: phoneController.text,
                      otpNumber: passwordcontroller.text));
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                },
                color: Colors.green,
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                child: BlocConsumer<AuthBloc, AuthState>(
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
    );
  }
}
