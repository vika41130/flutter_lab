import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lab/services/cache_service.dart';
import 'package:injectable/injectable.dart';

// @Singleton(signalsReady: true)
// @singleton
// @lazySingleton
// class UserService {
//   // 
//   late CacheService cacheService;

//   UserService({required this.cacheService}) {
//     debugPrint('UserService init');
//   }

//   @disposeMethod
//   void dispose() {
//     // dispose stream
//     debugPrint('UserService dispose');
//   }
// }

@LazySingleton(dispose: disposeUserService)
class UserService {
  late CacheService cacheService;

  UserService({required this.cacheService}) {
    debugPrint('UserService init');
  }

  void dispose() {
    // dispose stream
    debugPrint('UserService dispose');
  }
}

FutureOr disposeUserService(UserService instance) {
  instance.dispose();
}
