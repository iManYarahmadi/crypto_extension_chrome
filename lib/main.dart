
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependency();
  runApp(
    const App(),
  );
}
