import 'package:digital14_search/services/services.dart';
import 'package:digital14_search/common/router.dart';
import 'package:digital14_search/common/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServices(<BaseService>[
    sharedPreferenceService,
    restService,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      themeMode: ThemeMode.light,
      routerConfig: appRouter,
    );
  }
}
