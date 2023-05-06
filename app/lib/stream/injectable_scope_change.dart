import 'dart:async';

import 'package:flutter_lab/injection/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class InjectableScopeChangeStream {
  final StreamController<String> _streamController = StreamController<String>();
  Stream<String> get stream => _streamController.stream;
  InjectableScopeChangeStream() {
    onInjectableScopeChange();
  }

  onInjectableScopeChange() {
    getIt.onScopeChanged = (bool pushed) {
      _streamController.sink.add(getIt.currentScopeName ?? '');
    };
  }
}

void configureInjectableScopeChange() {
  getIt<InjectableScopeChangeStream>().onInjectableScopeChange();
}
