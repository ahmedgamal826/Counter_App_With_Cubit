import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart'; // say counter_event file is part from counter_bloc file
part 'counter_state.dart'; // say counter_state file is part from counter_bloc file

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<CounterIncrementEvents>((event, emit) =>
        emit(CounterIncrementState(state.count + 1))); // emit ==> update state

    on<CounterDecrementEvents>((event, emit) =>
        emit(CounterDecrementState(state.count - 1))); // Decrement
  }
}
