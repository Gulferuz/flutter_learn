import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/feature/cart/bloc/counter_event.dart';
import 'package:untitled/feature/cart/bloc/counter_state.dart';

final class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(oldProductCount: {})) {
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  void _onIncrement(Increment event, Emitter<CounterState> emit) {
    final newCount = event.currentCount + 1;
    final currentCount = state.oldProductCount[event.key] ?? 0;

    final result = Map<int, int>.from(state.oldProductCount);
    result[event.key] = newCount;

    emit(
      state.copyWith(
        newProductCount: result,
      ),
    );
  }
  void _onDecrement(Decrement event, Emitter<CounterState> emit) {
    final newCount = event.currentCount - 1;
   final currentCount = state.oldProductCount[event.key] ?? 0;
    final result = Map<int, int>.from(state.oldProductCount);
    result[event.key] = newCount;

    emit(
      state.copyWith(
        newProductCount: result,
      ),
    );
  }
}
