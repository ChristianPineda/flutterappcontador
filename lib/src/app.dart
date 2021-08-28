import 'package:flutter/material.dart';
import 'package:intro/src/pages/contador_page.dart';

class Contador extends StatelessWidget {
  //Aquí se crea la clase (el widget) de tipo Stateless
  //El widget no funcionará sin la implementación (el método build), lo que al escribir la clase, el Quick Fix anñadirá lo necesario
  @override
  Widget build(BuildContext context) {
    //Se encarga de reconocer el árbol de widgets
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(), //Aquí se pone el Scaffold
    );
  }
}