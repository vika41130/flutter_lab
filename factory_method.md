- call method right after @factoryMethod
```
@lazySingleton
class UserService {
  late CacheService cacheService;

  @factoryMethod
  static Future<UserService> create(CacheService cacheService) async {
    return UserService(cacheService: cacheService);
  }

  UserService({required this.cacheService}) {
    debugPrint('UserService init');
  }
}
```