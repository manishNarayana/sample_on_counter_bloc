import 'package:bloc/bloc.dart';
import 'package:sample_on_counter_bloc/bloc/count_event.dart';
import 'package:sample_on_counter_bloc/bloc/count_state.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  // CountBloc(super.initialState){
  //   on<CounterDecrementEvent>(_onCounterDecrementEvent);
  //   on<CounterIncrementEvent>(_onCounterIncrementEvent);
  // }

  CountBloc() : super(CountUpdateState(message: "Initial State",counterValue: 0)){
    on<CounterDecrementEvent>(_onCounterDecrementEvent);
    on<CounterIncrementEvent>(_onCounterIncrementEvent);
  }
}

void _onCounterDecrementEvent(
    CounterDecrementEvent event, Emitter<CountState> emit) {
  var messageValue = "";
  if (event.count.itemCount > 0) {
    messageValue = "Decrement the counter value";
    emit(CountRetireState(message: messageValue,counterValue: event.count.itemCount-1));
  } else {
    messageValue = "Value can not be decrement as its zero";
    emit(CountRetireState(message: messageValue,counterValue: 0));
  }
}

void _onCounterIncrementEvent(
    CounterIncrementEvent event, Emitter<CountState> emit) {
  var messageValue = "Increment the counter value";
  emit(CountRetireState(message: messageValue,counterValue: event.count.itemCount+1));
}
