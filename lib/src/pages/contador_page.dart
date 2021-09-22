import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _conteo = 0;
  final _estiloTexto = const TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi primera App en Fluta'),
          centerTitle: true,
          elevation: 3.8,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de taps',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      const SizedBox(width: 30.0),
      FloatingActionButton(
          onPressed: _reset, child: const Icon(Icons.exposure_zero)),
      const Expanded(child: SizedBox()),
      FloatingActionButton(onPressed: _restar, child: const Icon(Icons.remove)),
      const SizedBox(width: 5.0),
      FloatingActionButton(onPressed: _sumar, child: const Icon(Icons.add)),
    ]);
  }

  void _sumar() {
    setState(() => _conteo++);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

  void _restar() {
    if (_conteo > 0) {
      setState(() => _conteo--);
    }
  }
}
