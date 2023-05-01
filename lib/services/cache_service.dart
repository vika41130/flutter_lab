import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class CacheService {
  // method caching

  CacheService() {
    debugPrint('CacheService init');
  }
}