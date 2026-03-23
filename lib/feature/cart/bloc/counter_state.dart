import 'package:equatable/equatable.dart';

final class CounterState extends Equatable {
  final Map<int, int> oldProductCount;

  const CounterState({required this.oldProductCount});

  CounterState copyWith({Map<int, int>? newProductCount}) {
    return CounterState(oldProductCount: newProductCount ?? oldProductCount);
  }

  @override
  List<Object> get props => [oldProductCount];
}
