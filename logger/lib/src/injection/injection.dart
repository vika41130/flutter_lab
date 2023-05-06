import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/src/injection/injection.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(GetIt instance) async => instance.init();
