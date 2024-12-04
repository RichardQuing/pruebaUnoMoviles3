import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegadores/drawer.dart';

class Ejercicio1 extends StatelessWidget {
  const Ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ejercicio 1"),
        ),
        drawer: MiDrawer(),
        body: Column(
          children: [
            Text("Ejercicio cohete"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: alturaIni_input(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: tiempo_input(),
            ),
            calcular_btn(context),
            imagenUrl(),
          ],
        ));
  }
}

Widget imagenUrl() {
  return Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdI5h6LZxis-xvMA-mioIFBUdBqrofceIn1A&s",
      width: 300);
}

TextEditingController alturaIni = TextEditingController();

Widget alturaIni_input() {
  return TextField(
    controller: alturaIni,
    decoration: InputDecoration(
      label: Text("Ingresae la altura inicial en metros"),
      border: OutlineInputBorder(),
    ),
  );
}

TextEditingController tiempo = TextEditingController();

Widget tiempo_input() {
  return TextField(
    controller: tiempo,
    decoration: InputDecoration(
      label: Text("Ingresae el tiempo en segundos"),
      border: OutlineInputBorder(),
    ),
  );
}

Widget calcular_btn(context) {
  return FilledButton(
      onPressed: () => calcular_ejercicio1(context),
      child: Text("Calcular"),
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)));
}

void calcular_ejercicio1(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("${calcular_distancia (int.parse(alturaIni.text), int.parse(tiempo.text))}"),
        );
      });
}

String calcular_distancia(int alturaIni, int tiempo) {
  double a = 20;
  double h = alturaIni + (0.5 * a * tiempo * tiempo); 
  if (h >= 1000) {
    return "El lanzamiento es exitoso";  
  } else {
    return "El lanzamiento fallido";  
  }
}
