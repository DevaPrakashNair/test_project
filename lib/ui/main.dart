import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/bloc/display_details.dart';
import 'package:test_project/bloc/firstbloc.dart';
import 'package:test_project/bloc/registration.dart';
import 'package:test_project/ui/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
        BlocProvider<RegBloc>(create: (context)=>RegBloc()),
        BlocProvider<DisBloc>(create: (context)=>DisBloc())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        darkTheme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Page1(),
      ),
    );
  }
}
