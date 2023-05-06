import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CacheService {
  // method caching

  CacheService() {
    debugPrint('CacheService init');
  }
}