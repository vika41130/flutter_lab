
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab/services/user/user_service.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userSrv.getUserList().then((value) {
        if (kDebugMode) {
          print(value.body);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text('User Detail'),
    );
  }
}