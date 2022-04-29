import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/bloc/getAllUser.dart';

class Profile_All extends StatefulWidget {
  const Profile_All({Key? key}) : super(key: key);

  @override
  _Profile_AllState createState() => _Profile_AllState();
}

class _Profile_AllState extends State<Profile_All> {
  @override
  void initState(){
    super.initState();
    BlocProvider.of<AllBloc>(context).add(CheckDisplay());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details of all users"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<AllBloc,AllState>(
              builder: (context,state){
                if(state is DisplayChecked){
                  return ListView.builder(

                    physics: NeverScrollableScrollPhysics(),
                    itemCount: state.display_allModel!.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context,int index){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text(state.display_allModel!.data![index].place!)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(color: Colors.white,),
                        ],
                      );
                    },
                  );
                }
                else if(state is DisplayError)
                {
                  return Text(state.error);
                }
                else
                  return CircularProgressIndicator() ;
              },
            )
          ],
        ),
      ),
    );
  }
}
