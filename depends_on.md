- one service depends on other services
- wait other services ready to use
```
  getIt.registerSingletonAsync<ConfigService>(() async {
    final configService = ConfigService();
    await configService.init();
    return configService;
  });

  getIt.registerSingletonAsync<RestService>(() async => RestService().init());

  getIt.registerSingletonAsync<DbService>(createDbServiceAsync,
      dependsOn: [ConfigService]);

  getIt.registerSingletonWithDependencies<AppModel>(
      () => AppModelImplmentation(),
      dependsOn: [ConfigService, DbService, RestService]);
```
- instanceName
```
  getIt.registerSingletonAsync<RestService>(() async => RestService().init(), instanceName:"rest1");

  getIt.registerSingletonWithDependencies<AppModel>(
      () => AppModelImplmentation(),
      dependsOn: [InitDependency(RestService, instanceName:"rest1")]);
```
