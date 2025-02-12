import '../model/count.dart';

abstract class CountEvent {}

class CounterIncrementEvent extends CountEvent{
  final Count count;
  CounterIncrementEvent({ required this.count});
}

class CounterDecrementEvent extends CountEvent{
  final Count count;
  CounterDecrementEvent({ required this.count});
}