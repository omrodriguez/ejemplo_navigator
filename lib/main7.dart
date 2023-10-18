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
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Ejemplo de NavigationDrawer"),
            ),
            endDrawer: NavigationDrawer(
              onDestinationSelected: (value) {onItemTaped(context, value);},
              selectedIndex: indiceActual,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("Páginas disponibles", 
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                NavigationDrawerDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(Icons.home_outlined),
                  label: Text("Home"),
                ),
                NavigationDrawerDestination(
                  icon: Icon(Icons.one_k),
                  selectedIcon: Icon(Icons.one_k_outlined),
                  label: Text("Página 1"),
                ),
                NavigationDrawerDestination(
                  icon: Icon(Icons.two_k),
                  label: Text("Página 2"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
                  child: Divider(),),
              ],
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
