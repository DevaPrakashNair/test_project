import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/bloc/display_details.dart';
import 'package:test_project/data/webclient.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  void initState(){
    super.initState();
    BlocProvider.of<DisBloc>(context).add(CheckDisplay(token: ""));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          child: BlocBuilder<DisBloc,DisState>(
            builder: (context, state) {
              if(state is DisplayChecked) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(100, 100, 100, 100),
                    child: Column(
                      children: [
                        Text(""),
                        // Text(),
                        // Text(),
                        // Text()
                      ],
                    )
                );
              }
            }),
          ),
      );
  }
}


// BlocProvider.of<DisBloc>(context).add(CheckDisplay(token: ''
// ));
// //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
// },
// child: BlocConsumer<DisBloc, DisState>(
// builder: (context, state) {
// if (state is CheckingDisplay) {
// return Container(
// height: 22,
// child: CircularProgressIndicator(),
// );
// } else {
// return Text("");
// }
// },
// listener: (context, state) {
// },