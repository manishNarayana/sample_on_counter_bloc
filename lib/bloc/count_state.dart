abstract class CountState {
  final String message;
  final int counterValue;

  CountState({required this.message, required this.counterValue});
}

class CountUpdateState extends CountState {
  CountUpdateState({required String message, required int counterValue})
      : super(message: message, counterValue: counterValue);
}

class CountRetireState extends CountState {
  CountRetireState({required super.message, required super.counterValue});
}
