import 'package:flutter/foundation.dart';
import 'package:flutter_lab/injection/scope.dart';
import 'package:injectable/injectable.dart';

@southeastAsia
@Injectable()
class SoutheastAsiaWidget {
  void log() {
    debugPrint('SoutheastAsiaWidget');
  }
}

@eastAsia
@Injectable()
class EastAsiaWidget {
  void log() {
    debugPrint('EastAsiaWidget');
  }
}
