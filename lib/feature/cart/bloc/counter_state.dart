import 'package:equatable/equatable.dart';

final class CounterState extends Equatable{
  final Map<int, int> oldProductCount;
  // final String oldName;
  // final int key;
  // final int currentCount;
  // final String oldLastName;

  const CounterState({
    required this.oldProductCount,
    // required this.key,
    // required this.currentCount,
    // required this.oldName,
    // required this.oldLastName,
  });

  CounterState copyWith({
    Map<int, int>? newProductCount,
    // int? newkey,
    // int? newcurrentCount,
    // String? newName,
    // String? newLastName,
  }) {
    return CounterState(
      oldProductCount: newProductCount ?? oldProductCount,
      // key: newkey ?? key,
      // currentCount: newcurrentCount ?? currentCount,
      // oldName: newName ?? oldName,
      // oldLastName: newLastName ?? oldLastName,
    );
  }
  @override
  List<Object> get props => [oldProductCount];
}
