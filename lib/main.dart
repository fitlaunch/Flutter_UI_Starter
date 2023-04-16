import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startertemplate/pages/app_routes.dart';
import 'package:startertemplate/providers/active_theme_provider.dart';

import 'constants/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///provider for theme toggle
    final activeTheme = ref.watch(activeThemeProvider);
    return MaterialApp(
      title: 'Awesome New Project',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: activeTheme == Themes.dark ? ThemeMode.dark : ThemeMode.light,
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      //home: const LoginPage(),
    );
  }
}
