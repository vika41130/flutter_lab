import 'package:flutter_lab/config/endpoint/endpoint.dart';
import 'package:flutter_lab/config/http/http_common.dart';

class UserService extends HTTPCore {
	getUserList() {
		return get(EndPoint.userList);
	}
}
