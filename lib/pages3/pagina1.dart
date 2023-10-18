import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Página UNO"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Esta es la página UNO',),
            IconButton(
              onPressed: () => Navigator.pop(context),  
              icon: const Icon(Icons.arrow_back)),
            IconButton(
              onPressed: () => Navigator.pushNamed(context,'/pagina2',), 
              icon: const Icon(Icons.arrow_forward)),
          ],),),);}}
