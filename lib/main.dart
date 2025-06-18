
import 'package:flutter/material.dart';
import 'package:veggies_1/screens/home.dart';
import 'package:veggies_1/screens/tomato.dart';
import 'package:veggies_1/screens/onion.dart';
import 'package:veggies_1/screens/potato.dart';
import 'package:veggies_1/screens/eggplant.dart';
import 'package:veggies_1/screens/ginger.dart';
import 'package:veggies_1/screens/red_cabbage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veggies Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const Home(),
        '/tomato': (_) => const Tomato(),
        '/onion': (_) => const Onion(),
        '/eggplant': (_) => const EggPlant(),
        '/ginger': (_) => const Ginger(),
        '/red_cabbage': (_) => const RedCabbage(),
        '/potato': (_) => const Potato(),
      },
    );
  }
}