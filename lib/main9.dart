import 'package:flutter/material.dart';
import 'pages4/my_home_page.dart';
import 'pages4/pagina1.dart';
import 'pages4/pagina2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int indiceActual = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Navigator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Ejemplo de NavigationRail"),
          ),
          body: Row(
            children: [
              NavigationRail(
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    selectedIcon: Icon(Icons.home),
                    icon: Icon(Icons.home_outlined),
                    label: Text('Home')),
                  NavigationRailDestination(
                    selectedIcon: Icon(Icons.one_k),
                    icon: Icon(Icons.one_k_outlined),
                    label: Text('Página 1')),
                  NavigationRailDestination(
                    selectedIcon: Icon(Icons.two_k),
                    icon: Icon(Icons.two_k_outlined),
                    label: Text('Página 2')),
                ], 
                selectedIndex: indiceActual,
                groupAlignment: -1.0,
                onDestinationSelected: (int index) {
                  setState(() {
                    indiceActual = index;
                  });}
              ),
              Expanded(child: <Widget> [
                  const MyHomePage(),
                  const Pagina1(),
                  const Pagina2(),
                ][indiceActual]),
            ],)),);}}

