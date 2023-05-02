import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class Service {
  void log();
}

@Environment('dev')
@Injectable(as: Service)
class ServiceIpl implements Service {
  @override
  void log() {
    debugPrint('ServiceIpl dev');
  }
}

@Environment('test')
@Injectable(as: Service)
class ServiceIpl2 implements Service {
  @override
  void log() {
    debugPrint('ServiceIpl2 test');
  }
}
