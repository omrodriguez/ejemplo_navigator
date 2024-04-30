import 'package:flutter/material.dart';
import 'plogin2/pagina_login.dart';
import 'plogin2/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Navigator con envío de datos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case '/login' : return MaterialPageRoute(
            builder: (context) {
              return const PaginaLogin();});
          case '/' : 
            var args = (settings.arguments != null)? 
              settings.arguments as LoginData 
              : LoginData("","","");
            return MaterialPageRoute(
              builder: (context) {
                return MyHomePage(nombre: args.nombre, email: args.email, pass: args.pass);
              });
          default: {
            assert(false, 'La página ${settings.name} no está implementada');
            return null;
          }
        }
      },
      initialRoute: '/login',
    );}}

