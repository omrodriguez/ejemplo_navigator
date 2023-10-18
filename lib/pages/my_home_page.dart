import 'package:flutter/material.dart';
import 'pagina1.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Página principal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Esta es la página Home'),
            IconButton(
              onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Pagina1(),),), 
              icon: const Icon(Icons.arrow_forward)),
          ],),),);}}
