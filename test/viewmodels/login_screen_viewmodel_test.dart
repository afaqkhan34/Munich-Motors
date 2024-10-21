import 'package:flutter_test/flutter_test.dart';
import 'package:munich_motors/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('LoginScreenViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
