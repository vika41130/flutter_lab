##### async factory
- void registerFactoryAsync<T>(FactoryFuncAsync<T> func, {String instanceName});
- Future<T> getAsync<T>([String instanceName]);

##### async singleTON
- getIt.registerSingletonAsync<ConfigService>(() async {return new instance});
- getIt.allReady(): return Future<void> wait all async initialization finished

##### code example
```
  class RestService {
    Future<RestService> init() async {
      Future.delayed(Duration(seconds: 1));
      return this;
    }
  }

  final getIt = GetIt.instance;

  /// in your setup function:
  getIt.registerSingletonAsync<ConfigService>(() async {
    final configService = ConfigService();
    await configService.init();
    return configService;
  });

  getIt.registerSingletonAsync<RestService>(() async => RestService().init());
  // here we asume an async factory function `createDbServiceAsync`
  getIt.registerSingletonAsync<DbService>(createDbServiceAsync);


  /// ... in your startup page:
  return FutureBuilder(
      future: getIt.allReady(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: Text('The first real Page of your App'),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      });
```
