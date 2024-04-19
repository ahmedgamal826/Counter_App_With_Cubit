part of 'counter_bloc.dart';

abstract class CounterState {
  final int count;

  CounterState({required this.count});
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(count: 0);
}

class CounterIncrementState extends CounterState {
  CounterIncrementState(int incrementValue) : super(count: incrementValue);
}

class CounterDecrementState extends CounterState {
  CounterDecrementState(int decrementValue) : super(count: decrementValue);
}
