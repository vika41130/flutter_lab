import 'package:flutter_lab/models/models_index.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerSingleton<CountStream>(CountStream());
}
