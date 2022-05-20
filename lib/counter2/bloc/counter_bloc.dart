import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0, dateTime: DateTime.now())) {
    on<CounterIncrement>(_onCounterIncrement);
    on<CounterDecrement>(_onCounterDecrement);
    on<CounterReset>(_onCounterReset);
  }

  void _onCounterIncrement(CounterIncrement event, Emitter<CounterState> emit) {
    emit(CounterState(count: state.count + 1, dateTime: DateTime.now()));
  }

  void _onCounterDecrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(CounterState(count: state.count - 1, dateTime: DateTime.now()));
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(CounterState(count: 0, dateTime: DateTime.now()));
  }
}
