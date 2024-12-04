import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegadores/drawer.dart';

class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 2"),
      ),
      drawer: MiDrawer(),
      body: Column(
        children: [
          Center(child: imagen()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: velocidad_input(),
          ),
          calcular_btn(context),
        ],
      ),
    );
  }
}

TextEditingController velocidad = TextEditingController();

Widget velocidad_input() {
  return TextField(
    controller: velocidad,
    decoration: InputDecoration(
      label: Text("Ingrese la velocidad angular en rad/s"),
      border: OutlineInputBorder(),
    ),
  );
}

Widget imagen() {
  return Image.asset(
    "assets/image/uno.jpg",
    height: 300,
  );
}

Widget calcular_btn(context) {
  return ElevatedButton(
    onPressed: () => calcular_ejercicio2(context),
    child: Text("Calcular"),
    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue))
  );
}

void calcular_ejercicio2(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
              "${calcular_distancia(int.parse(velocidad.text))}"),
        );
      });
}

double calcular_distancia(int velocidad) {
  double t = 25;

  double calculo = velocidad * t;
  return calculo;
}
