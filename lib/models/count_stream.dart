import 'dart:async';

class CountStream {
  int count = 0;
  // constructor
  // CountStream() {
  //   counterController.sink.add(count);
  // }

  StreamController counterController = StreamController<int>();
  Stream get counterStream => counterController.stream;

  void increaseCount() {
    if (count == 9) return;
    count++;
    counterController.sink.add(count);
  }
  
  void decreaseCount() {
    if (count == 0) return;
    count--;
    counterController.sink.add(count);
  }
}
