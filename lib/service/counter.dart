import "package:rxdart/rxdart.dart";

class Counter {
  BehaviorSubject _counter = BehaviorSubject.seeded(0);

  Stream get stream$ => _counter.stream;

  int get current => _counter.value;

  increment() {
    _counter.add(current + 1);
  }
}
