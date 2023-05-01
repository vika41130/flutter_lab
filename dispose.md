##### 2 ways
- way 1: anotation @disposeMethod
```
@disposeMethod
  void dispose() {
    // dispose stream
    debugPrint('UserService dispose');
  }
```
- way 2: function disposeUserService
```
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
```