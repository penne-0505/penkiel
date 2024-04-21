import 'package:flutter/material.dart';

import 'package:penkiel/components/sidebar.dart';
import 'package:penkiel/components/topnav.dart';
import 'package:penkiel/utils.dart';


void main() {
  runApp(const PenkielApp());
}

class PenkielApp extends StatelessWidget {
  const PenkielApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Penkiel App'),
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorDB.primary, background: ColorDB.bg),
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(10),
          thickness: MaterialStateProperty.all(4),
          thumbColor: MaterialStateProperty.all(const Color(0xFFD8D8D8)),
        ),
        fontFamilyFallback: const <String>['Inter', 'Inter Display'],
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
          if ((1280 < constraints.maxWidth) && (constraints.maxWidth <= 1980)) {
            return const Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SideBar(),
                ),
                Expanded(
                  flex: 4,
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
