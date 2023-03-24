import 'package:http/http.dart' as http;

class HTTPCore {
  get(String endpoint) {
    return http.get(Uri.https(endpoint));
  }

  post(String endpoint, dynamic payload) {
    return http.post(Uri.https(endpoint), body: payload);
  }

  delete(String endpoint) {
	return http.delete(Uri.https(endpoint));
  }
}
