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
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Navigator',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Ejemplo de menú emergente"),
            actions: [
              PopupMenuButton(
                itemBuilder:(context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 1,
                    child: Text("Pagina 1")),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Pagina 2")),
                ],
                onSelected: (value) {setState(() {
                  if (value == 1) {
                    navigatorKey.currentState?.push(MaterialPageRoute(
                      builder:(context) => const Pagina1(),));
                  } else if (value == 2) {
                    navigatorKey.currentState?.push(MaterialPageRoute(
                      builder:(context) => const Pagina2(),));
                  }
                });},),],),
          body: const MyHomePage()
        ),);}}
