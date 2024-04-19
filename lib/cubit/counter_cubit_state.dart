abstract class CounterCubitState {
  final int countValue;

  CounterCubitState({required this.countValue});
}

class CounterCubitInitialState extends CounterCubitState {
  CounterCubitInitialState() : super(countValue: 0);
}

class CounterCubitIncrementState extends CounterCubitState {
  CounterCubitIncrementState(int increment) : super(countValue: increment);
}

class CounterCubitDecrementState extends CounterCubitState {
  CounterCubitDecrementState(int decrement) : super(countValue: decrement);
}
