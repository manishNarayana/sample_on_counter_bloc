import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_on_counter_bloc/bloc/count_bloc.dart';
import 'package:sample_on_counter_bloc/screen/count_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CountBloc>(
      create: (_) => CountBloc(),
      child: MaterialApp(
        title: 'Counter Bloc Sample',
        theme: ThemeData(primarySwatch: Colors.blue),
        home:  CountScreen(),
      ),
    );
  }
}
