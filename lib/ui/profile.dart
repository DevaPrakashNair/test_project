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
    BlocProvider.of<DisBloc>(context).add(CheckDisplay());
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          child: BlocBuilder<DisBloc,DisState>(
            builder: (context, state) {
              if(state is DisplayChecked) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(100, 100, 10, 100),
                    child: Column(
                      children: [
                        Text("First name: "+state.displayModel!.data!.firstName!),
                        Text("Second name: "+state.displayModel!.data!.lastName!),
                        Text("Mobile number: "+state.displayModel!.data!.mobileNumber.toString()),
                        Text("House name: "+state.displayModel!.data!.houseName!),
                        Text("Place: "+state.displayModel!.data!.place!)
                      ],
                    )
                );
              }
              else{
                return Text("Error");
              }
            }),
          ),
      );
  }
}
