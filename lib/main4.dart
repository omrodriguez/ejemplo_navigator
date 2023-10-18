import 'package:flutter/material.dart';
import 'pages4/my_home_page.dart';
import 'pages4/pagina1.dart';
import 'pages4/pagina2.dart';

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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.pages)),
                Tab(icon: Icon(Icons.pages_outlined)),
            ]),
            title: const Text("Ejemplo de TabBar"),
          ),
          body: const TabBarView(
            children: [
              MyHomePage(),
              Pagina1(),
              Pagina2(),
            ]),
        )),);}}
