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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Ejemplo de Drawer"),
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    const DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Text("Páginas disponibles", 
                        style: TextStyle(color: Colors.white, fontSize: 24)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text("Home"),
                      selected: indiceActual == 0,
                      onTap: () {onItemTaped(context, 0);},
                    ),
                    ListTile(
                      leading: const Icon(Icons.one_k),
                      title: const Text("Página 1"),
                      selected: indiceActual == 1,
                      onTap: () {onItemTaped(context, 1);},
                    ),
                    ListTile(
                      leading: const Icon(Icons.two_k),
                      title: const Text("Página 2"),
                      selected: indiceActual == 2,
                      onTap: () {onItemTaped(context, 2);},
                    ),
                  ],) 
              ),
              body: <Widget> [
                  const MyHomePage(),
                  const Pagina1(),
                  const Pagina2(),
                ][indiceActual]);
        }),);}

  void onItemTaped(BuildContext context, int index) {
    setState(() {
      indiceActual = index;
    });
    Navigator.pop(context);
  }}
