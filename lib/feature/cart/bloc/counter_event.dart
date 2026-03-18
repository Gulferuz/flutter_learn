sealed class CounterEvent {}

final class Increment extends CounterEvent {
  final int key;
  final int currentCount;

  Increment(this.key,this.currentCount);
}

final class Decrement extends CounterEvent {
  final int key;
  final int currentCount;

  Decrement(this.key, this.currentCount);
}
