import 'package:flutter/material.dart';
import 'package:base_flutter/infrastructure/navigation/navigation.dart';
import 'package:base_flutter/infrastructure/theme/theme.dart';
import 'package:base_flutter/initialize_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Nav.goRoutes,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light(),
      themeMode: ThemeMode.light,
    );
  }
}
