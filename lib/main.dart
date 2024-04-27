import 'package:flutter/material.dart';

import 'package:penkiel/components/sidebar.dart';
import 'package:penkiel/components/topnav.dart';
import 'package:penkiel/utils.dart';

// **Typos, magic numbers, nonsensical processing logic, no comments or documentation Xd **

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
        colorScheme: ColorScheme.fromSeed(seedColor: ColorDB.primary, background: ColorDB.bg),
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(10),
          thickness: MaterialStateProperty.all(4),
          thumbColor: MaterialStateProperty.all(ColorDB.pale),
        ),
        fontFamilyFallback: const <String>['Inter', 'Roboto', 'Arial', 'sans-serif'],
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title
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
          if ((640 < constraints.maxWidth)) {
            return const Row(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: SideBar(),
                ),
                Expanded(
                  flex: 32,
                  child: Center(
                    child: Text('Main Content'),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: Text('Main Content'),
            );
          }
        },
      ),
    );
  }
}
