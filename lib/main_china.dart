import 'package:flutter/material.dart';
import 'package:flutter_lab/injection/injection.dart';

import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureEnvironment('china');
  configureDependencies();
  runApp(const MyApp());
}
