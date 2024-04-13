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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF2Bf5E), background: const Color(0xFFFDFDFD), surfaceTint: const Color(0x00ffffff)),
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
  const MyHomePage({super.key, required this.title});

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
        builder: (context, constraints) {
          if ((600 < constraints.maxWidth) && (constraints.maxWidth < 1200)) {
            return const Row(
              children: <Widget>[
                // ! 実行して、ウィンドウの横幅を速く動かすと、エラーが出る。これ直す！！
                Expanded(
                  flex: 1,
                  child: SideBar(),
                ),
                Expanded(
                  flex: 5,
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
        }
      )
    );
  }
}
