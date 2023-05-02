import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

String environment = '';
void configureEnvironment(String env) {
  environment = env;
}

@InjectableInit(
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true,
)
configureDependencies() async => getIt.init(environment: environment);
