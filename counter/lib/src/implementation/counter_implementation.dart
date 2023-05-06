import 'package:injectable/injectable.dart';
import '../interface/interface_index.dart';

@LazySingleton(as: Counter)
class CounterImpl implements Counter {
  final CounterStorage _counterStorage;
  CounterImpl(this._counterStorage);
  @override
  int get value => _counterStorage.get();

  @override
  void inc() {
    _counterStorage.set(value + 1);
  }

  @override
  void dec() {
    _counterStorage.set(value - 1);
  }
}
