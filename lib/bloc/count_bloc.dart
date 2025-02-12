import 'package:bloc/bloc.dart';
import 'package:sample_on_counter_bloc/bloc/count_event.dart';
import 'package:sample_on_counter_bloc/bloc/count_state.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(CountUpdateState(message: "Initial State",counterValue: 0)){
    on<CounterDecrementEvent>(_onCounterDecrement);
    on<CounterIncrementEvent>(_onCounterIncrement);
  }

void _onCounterDecrement(
    CounterDecrementEvent event, Emitter<CountState> emit){
  var messageValue = "";
  var currentCount = 0;
    currentCount = (state).counterValue;
  if (currentCount> 0) {
    messageValue = "Decrement the counter value";
    emit(CountRetireState(message: messageValue,counterValue: currentCount-1));
  } else {
    messageValue = "Value can not be decrement as its zero";
    emit(CountRetireState(message: messageValue,counterValue: 0));
  }
}

void _onCounterIncrement(
    CounterIncrementEvent event, Emitter<CountState> emit) {
  var currentCount = 0;
    currentCount = (state).counterValue;
  var messageValue = "Increment the counter value";
  emit(CountUpdateState(message: messageValue,counterValue: currentCount+1));
}
}
