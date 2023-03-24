
import 'package:http/http.dart' as http;

class HTTPCore {
  Future<dynamic> get(String endpoint) {
    final Map<String, String> headers = {};
    headers['Accept'] = 'application/json';
    headers['Content-Type'] = 'application/json';
    return http.get(Uri.parse(endpoint));
  }

  post(String endpoint, dynamic payload) {
    return http.post(Uri.parse(endpoint), body: payload);
  }

  delete(String endpoint) {
	return http.delete(Uri.parse(endpoint));
  }
}
