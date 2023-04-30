##### factory
- void registerFactory<T>(FactoryFunc<T> func)
- func: function return new instance
- return new instance each time access

##### singleTon
- void registerSingleton<T>(T instance)
- same only one instance for all access
- time-consuming at app start-ap

##### lazySingleTon
- void registerLazySingleton<T>(FactoryFunc<T> func)
- return new instance when access
- after, same only one instance

