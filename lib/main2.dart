import 'package:flutter/material.dart';
import 'pages2/my_home_page.dart';
import 'pages2/pagina1.dart';
import 'pages2/pagina2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Navigator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/pagina1': (context) => const Pagina1(),
        '/pagina2': (context) => const Pagina2(),
      },
      initialRoute: '/',
    );}}


