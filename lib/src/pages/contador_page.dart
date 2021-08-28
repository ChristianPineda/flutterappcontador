import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  final TextStyle _estiloNumero = new TextStyle(fontSize: 40);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Taps: ',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloNumero,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30),
          FloatingActionButton(
              child: Icon(Icons.exposure_zero),
              onPressed: () {
                print('Haz devuelto el valor a cero');
                setState(() {
                  _conteo=0;
                });
              }),

          Expanded(child: SizedBox()), //espacio en blanco entre los botones

          FloatingActionButton(
              child: Icon(Icons.remove_outlined),
              onPressed: () {
                print('Haz restado un número');
                setState(() {
                  _conteo--;
                });
              }),
          
          SizedBox(width: 10),
          FloatingActionButton(
              child: Icon(Icons.plus_one),
              onPressed: () {
                print('Haz sumado un número');
                setState(() {
                  _conteo++;
                });
              }),
        ],
      ),
    );
  }
}