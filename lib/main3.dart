import 'package:flutter/material.dart';
import 'pages3/my_home_page.dart';
import 'pages3/pagina1.dart';
import 'pages3/pagina2.dart';

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
      onGenerateRoute: (settings) {
        final ruta = settings.name;
        switch(ruta) {
          case '/pagina1': return MaterialPageRoute(builder: (context) => const Pagina1());
          case '/pagina2': return MaterialPageRoute(builder: (context) => const Pagina2());
          default: return MaterialPageRoute(builder: (context) => const MyHomePage());
        }
      },
      initialRoute: '/',
    );}}
