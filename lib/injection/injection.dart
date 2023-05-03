import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

String environment = '';
void configureEnvironment(String env) {
  environment = env;
}

@InjectableInit(
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true,
)
// baseScope (default)
void configureDependencies() async => getIt.init(environment: environment);
// others scope
// pushNewScope when call initScope
void initSoutheastAsiaScope() {
  getIt.initSoutheastAsiaScope(dispose: beforeDisposeSoutheastAsia);
}
void initEastAsiaScope() {
  getIt.initEastAsiaScope(dispose: beforeDisposeEastAsia);
}
FutureOr<dynamic> beforeDisposeSoutheastAsia() {
  debugPrint('SoutheastAsia Dispose: run first function');
}
FutureOr<dynamic> beforeDisposeEastAsia() {
  debugPrint('EastAsia Dispose: run first function');
}
