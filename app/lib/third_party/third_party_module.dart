import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import 'new_model.dart';

@module
abstract class ThirdPartyModule {
  @lazySingleton
  http.Client get httpClient => http.Client();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  NewModel get newModel => NewModel();
}
