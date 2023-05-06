import 'package:counter/counter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CounterStorage)
class CounterStorageImpl extends CounterStorage {
  int _currentCounterValue = 0;
  @override
  int get() {
    return _currentCounterValue;
  }
  @override
  void set(int value) {
    _currentCounterValue = value;
  }
}