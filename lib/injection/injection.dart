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
// scope
void registerScope() { // pushNewScope when call initScope
  // initSoutheastAsiaScope();
  // initEastAsiaScope();
}
void initSoutheastAsiaScope() {
  getIt.initSoutheastAsiaScope(dispose: afterDisposeSoutheastAsia);
}
void initEastAsiaScope() {
  getIt.initEastAsiaScope(dispose: afterDisposeEastAsia);
}
FutureOr<dynamic> afterDisposeSoutheastAsia() {
  debugPrint('afterDisposeSoutheastAsia');
}
FutureOr<dynamic> afterDisposeEastAsia() {
  debugPrint('afterDisposeEastAsia');
}
