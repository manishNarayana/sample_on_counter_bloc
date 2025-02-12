

abstract class CountState {}

class CountUpdateState extends CountState{
  final String message;
  final int counterValue;
  CountUpdateState({ required this.message, required this.counterValue});
}

class CountRetireState extends CountState{
  final String message;
  final int counterValue;
  CountRetireState({ required this.message, required this.counterValue});
}