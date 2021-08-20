import 'package:find_my_paw/pages/all_pages.dart';
import 'assets/color.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Find My Pawn',
        theme: ThemeData(
          primaryColor: AssetsColor.getLayout(),
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'index',
        routes: {
          'index': (context) =>
              MainPage(title: 'Find My Pawn - Dispositivos registrados'),
          'map': (context) => PagesFindMap()
        },
        home: MainPage(
            title: 'Find My Pawn Home Page - Dispositivos registrados'));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return PagesDevice();
  }
}
