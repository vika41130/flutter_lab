import 'package:dio/dio.dart';
import 'package:flutter_lab/injection/injection.dart';
import 'package:http/http.dart' as http;

import '../third_party/new_model.dart';

class HttpCore {
  getByUrl() {
    getIt<http.Client>(); // lazySingleton instance
  }
  getbyDio() {
    getIt<Dio>().get(''); // lazySingleton instance
  }
  getNewModel() { // lazySingleton NewModel instance
    getIt<NewModel>();
  }
}
