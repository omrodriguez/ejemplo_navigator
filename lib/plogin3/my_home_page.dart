import 'package:flutter/material.dart';
import 'pagina_login.dart';

class LoginData {
  final String nombre;
  final String email;
  final String pass;

  LoginData(this.nombre, this.email, this.pass);
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LoginData? datos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Página de Inicio"),
      ),
      body: Center(
        child: (datos == null)?
        mostrarBoton(context)
        : mostrarDatos(),
      ),);}

  Widget mostrarBoton(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => _pedirAutenticacion(context), 
          child: const Text("Autentificar"))
    ],);}

  Future<void> _pedirAutenticacion(BuildContext context) async {
    final datos = await Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const PaginaLogin()));

    if (!mounted) return;

    setState(() {
      this.datos = datos;
    });}

  Widget mostrarDatos() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Página de inicio"),
            const SizedBox(height: 20.0,),
            Text("Nombre de usuario: ${datos?.nombre}",
              style: const TextStyle(fontSize: 20, fontWeight: 
                FontWeight.bold, color: Colors.blue),),
            const SizedBox(height: 20.0,),
            Text("Correo electrónico: ${datos?.email}",
              style: const TextStyle(fontSize: 20, fontWeight: 
                FontWeight.bold, color: Colors.green),),
            const SizedBox(height: 20.0,),
            Text("Contraseña: ${datos?.pass}",
              style: const TextStyle(fontSize: 20, fontWeight: 
                FontWeight.bold, color: Colors.deepOrange),),
          ]);}}

