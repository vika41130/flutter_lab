import 'package:flutter_lab/config/endpoint/endpoint.dart';
import 'package:flutter_lab/config/http/http_common.dart';

UserService get userSrv => UserService.shared();

class UserService extends HTTPCore {
  static UserService? _sInstance;
  UserService._();
  factory UserService.shared() {
    _sInstance ??= UserService._();
    return _sInstance!;
  }
	Future<dynamic> getUserList() async {
		final response = await get(EndPoint.userList);
	}
}
