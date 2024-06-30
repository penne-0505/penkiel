import 'package:flutter/material.dart';

import 'package:penkiel/pages/main_content.dart';
import 'package:penkiel/components/utils/utils.dart';


void main() {
  runApp(const PenkielApp());
}

class PenkielApp extends StatelessWidget {
  const PenkielApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penkiel',
      home: const MainContentPage(title: 'Penkiel'),
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        fontFamilyFallback: const <String>['Inter', 'Roboto', 'Arial', 'sans-serif'],
        useMaterial3: true,
        scrollbarTheme: const ScrollbarThemeData().copyWith(thickness: WidgetStateProperty.all<double>(6), crossAxisMargin: 4),
        dividerColor: PenkielColors.dividerColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: PenkielColors.primary,
          primary: PenkielColors.primary,
          secondary: PenkielColors.secondary,
          background: PenkielColors.bg,
          ),
      )
    );
  }
}
