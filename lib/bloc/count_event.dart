
abstract class CountEvent {}

class CounterIncrementEvent extends CountEvent{
  CounterIncrementEvent();
}

class CounterDecrementEvent extends CountEvent{
  CounterDecrementEvent();
}