import 'package:flutter/material.dart';

import 'package:penkiel/components/data_list.dart';
import 'package:penkiel/components/sidebar.dart';
import 'package:penkiel/components/topnav.dart';
import 'package:penkiel/components/data_content.dart';
import 'package:penkiel/utils.dart';


void main() {
  runApp(const PenkielApp());
}

class PenkielApp extends StatelessWidget {
  const PenkielApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penkiel',
      home: const MyHomePage(title: 'Penkiel'),
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, 
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopNav(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1535) {
            return Row(
              children: <Widget>[
                const Expanded(
                  flex: 12,
                  child: SideBar(),
                ),
                Expanded(
                  flex: 18,
                  child: DataList(),
                ),
                const Expanded(
                  flex: 40,
                  child: DataContent()
                ),
              ],
            );
          } else {
            return const DataContent();
          }
        },
      ),
    );
  }
}
