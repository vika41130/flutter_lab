import 'package:flutter/material.dart';
import 'package:flutter_lab/injection/injection.dart';

import 'home.dart';
import 'set_up.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureEnvironment('china');
  setUp();
  runApp(const MyApp());
}
