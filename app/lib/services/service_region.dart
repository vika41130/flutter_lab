import 'package:flutter/foundation.dart';
import 'package:flutter_lab/injection/country.dart';
import 'package:flutter_lab/injection/scope.dart';
import 'package:injectable/injectable.dart';

abstract class Service {
  void log();
}

@vietnam
@malaysia
@indonesia
@Injectable(as: Service)
class SoutheastAsia implements Service {
  @override
  void log() {
    debugPrint('SoutheastAsia');
  }
}

@china
@japan
@Injectable(as: Service)
class EastAsia implements Service {
  @override
  void log() {
    debugPrint('EastAsia');
  }
}

@southeastAsia
// @Singleton(dispose: disposeDemo)
@LazySingleton(dispose: disposeDemo)
class Demo {}
void disposeDemo(Demo instance) {
  // dispose stream
  debugPrint('disposeDemo: $instance');
}
