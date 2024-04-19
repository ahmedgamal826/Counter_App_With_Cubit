import 'package:cubit_session/bloc/bloc_imports.dart';
import 'package:cubit_session/cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitInitialState());

  void incrementValue() {
    emit(CounterCubitIncrementState(state.countValue + 3));
  }

  void decrementsValue() {
    emit(CounterCubitDecrementState(state.countValue - 3));
  }
}
