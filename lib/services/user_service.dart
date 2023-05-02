import 'package:flutter/material.dart';
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

// @LazySingleton(dispose: disposeUserService)
// class UserService {
//   late CacheService cacheService;

//   UserService({required this.cacheService}) {
//     debugPrint('UserService init');
//   }

//   void dispose() {
//     // dispose stream
//     debugPrint('UserService dispose');
//   }
// }

// FutureOr disposeUserService(UserService instance) {
//   instance.dispose();
// }

// @Singleton()
// @injectable
// class UserService {
//   late CacheService cacheService;

//   @factoryMethod
//   create(CacheService cacheService) {
//     return UserService(cacheService: cacheService);
//   }

//   @factoryMethod
//   static create2(CacheService cacheService) {
//     return UserService(cacheService: cacheService);
//   }

//   UserService({required this.cacheService}) {
//     debugPrint('UserService init');
//   }
// }

// @injectable
// class UserService {
//   late CacheService cacheService;

//   UserService(@factoryParam cacheService) {
//     debugPrint(cacheService.toString());
//   }
// }

// // mixin
// mixin ServiceMixin {
//   String color = 'red';
//   printColor() {
//     debugPrint('ServiceMixin: $color');
//   }
// }
// // with mixin
// @Injectable(as: ServiceMixin)
// class UserService with ServiceMixin {
  
// }
// /* [END mixin] ------------------------------------------------------- */

// // abstract
// abstract class ServiceAbstract {
//   late String color;
//   void printColor();
// }
// // implements abstract
// @Injectable(as: ServiceAbstract)
// class UserService2 implements ServiceAbstract {
//   late String _color = 'red';
//   @override
//   get color => _color;
//   @override
//   set color(String color) {
//     _color = color;
//   }

//   @override
//   printColor() {
//     debugPrint('ServiceAbstract: $color');
//   }
// }
// /* [END abstract] ------------------------------------------------------- */

// // normal
// class ServiceNormal {
//   late String color;
//   void printColor() {}
// }
// @Injectable(as: ServiceNormal)
// class UserService3 extends ServiceNormal {
//   late String _color = 'red';
//   @override
//   get color => _color;
//   @override
//   set color(String color) {
//     _color = color;
//   }

//   @override
//   void printColor() {
//     debugPrint('ServiceNormal $color');
//   }
// }
// /* [END normal] ------------------------------------------------------- */

abstract class Service {
  void log();
}

@Named('serviceIpl')
@Injectable(as: Service)
class ServiceIpl implements Service {
  @override
  void log() {
    debugPrint('serviceIpl');
  }
}

@Named('serviceIpl2')
@Injectable(as: Service)
class ServiceIpl2 implements Service {
  @override
  void log() {
    debugPrint('serviceIpl2');
  }
}

/* use instance by instanceName 'serviceIpl' */
// in constructor
@injectable
class MyRepo {
final Service service;
  MyRepo(@Named('serviceIpl') this.service);
}

/* implementation class name to instanceName */
@named
@Injectable(as: Service)
class ServiceIpl3 implements Service {
  @override
  void log() {
    debugPrint('ServiceIpl3');
  }
}

@injectable
class MyRepo2 {
  final Service service;
  MyRepo2(@Named.from(ServiceIpl3) this.service);
}
