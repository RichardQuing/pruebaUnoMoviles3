import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/ejercicio1.dart';
import 'package:flutter_application_1/screens/ejercicio2.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Prueba"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Prueba())),
          ),
          ListTile(
            title: Text("Ejercicio 01"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Ejercicio1())),
          ),
          ListTile(
            title: Text("Ejercicio 02"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Ejercicio2())),
          ),
        ],
      ),
    );
  }
}
