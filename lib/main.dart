import 'package:dicoding_subscriptions/home.dart';
import 'package:dicoding_subscriptions/provider/localizations_provider.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_subscriptions/common.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocalizationProvider>(
      create: (context) => LocalizationProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocalizationProvider>(context);
        return MaterialApp(
          showSemanticsDebugger: true,
          locale: provider.locale,
          title: 'Flutter Localization & Accessibility',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.grey.shade50,
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade800,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
