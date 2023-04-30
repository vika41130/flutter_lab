```
getIt.registerSingletonWithDependencies<AppModel>(
      () {
          RestService restService1 = GetIt.I.get<RestService>(instanceName: "restService1");
          return AppModelImplmentation(restService1);
      },
      dependsOn: [InitDependency(RestService, instanceName:"restService1")],
  );
```