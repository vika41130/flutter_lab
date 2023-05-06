import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../interface/interface_index.dart';

@LazySingleton(as: Logger)
class LoggerImpl extends Logger {
  @override
  void info(String msg) {
    debugPrint('INFO: $msg');
  }

  @override
  void warn(String msg) {
    debugPrint('WARN: $msg');
  }

  @override
  void error(String msg) {
    debugPrint('ERROR: $msg');
  }
}