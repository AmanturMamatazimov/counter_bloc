
import 'package:counter_bloc/logic/cubit/counter_cubit.dart';
import 'package:counter_bloc/presentation/main.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: MyHomePage(),
      ),
    );
  }
}


