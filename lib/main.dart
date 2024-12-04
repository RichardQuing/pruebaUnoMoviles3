import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegadores/drawer.dart';

void main() {
  runApp(Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Prueba",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 102, 103),
      ),
      drawer: MiDrawer(),
      body: Column(
        children: [
          Center(child: Text("PRUEBA")),
          Center(child: Text("Nombre: Richard Quinaucho")),
          Center(child: Text("Usuario: RichardQuing")),
          Center(child: imagen()),
        ],
      ),
    );
  }
}

Widget imagen() {
  return Image.asset(
    "assets/image/dos.png",
    height: 300,
  );
}
