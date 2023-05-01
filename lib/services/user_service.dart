import 'package:flutter/material.dart';
import 'package:flutter_lab/services/cache_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserService {
  // 
  late CacheService cacheService;

  UserService({required this.cacheService}) {
    debugPrint('UserService init');
  }

}
