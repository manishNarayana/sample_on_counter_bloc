import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_on_counter_bloc/bloc/count_event.dart';

import '../bloc/count_bloc.dart';
import '../bloc/count_state.dart';
import '../model/count.dart';
class CountScreen extends StatelessWidget {

  const CountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieve user data from the bloc state.

    final state = context.watch<CountBloc>().state;
    String display = "";
    int counter = 0;

    if (state is CountUpdateState) {
      display = state.message;
      counter = state.counterValue;
    }
    if (state is CountRetireState) {
      display = state.message;
      counter = state.counterValue;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter")),
        body: Center(
          child:Container(
            color: Colors.blueGrey,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.plus_one),
                    onPressed: () {
                      context.read<CountBloc>().add(CounterIncrementEvent());

                    },
                  ),
                  Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.exposure_minus_1),
                    onPressed: () {
                      context.read<CountBloc>().add(CounterDecrementEvent());
                    },
                  ),
                ],
              ),
              SizedBox(height: 20), // Spacing between the rows
              Text(
                display,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ])
            ,),
        ));
  }
}
