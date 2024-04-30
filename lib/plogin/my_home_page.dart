import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String nombre;
  final String email;
  final String pass;

  const MyHomePage({super.key, required this.nombre, required this.email, required this.pass});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Página de Inicio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Página de inicio"),
            const SizedBox(height: 20.0,),
            Text("Nombre de usuario: ${widget.nombre}",
              style: const TextStyle(fontSize: 20, fontWeight: 
                FontWeight.bold, color: Colors.blue),),
            const SizedBox(height: 20.0,),
            Text("Correo electrónico: ${widget.email}",
              style: const TextStyle(fontSize: 20, fontWeight: 
                FontWeight.bold, color: Colors.green),),
            const SizedBox(height: 20.0,),
            Text("Contraseña: ${widget.pass}",
              style: const TextStyle(fontSize: 20, fontWeight: 
                FontWeight.bold, color: Colors.deepOrange),),
          ]),),);}}
