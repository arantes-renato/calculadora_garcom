import 'package:flutter/material.dart';

class NumeroDisplay extends StatefulWidget {
  final String numero;

  const NumeroDisplay({
    Key? key,
    required this.numero,
  }) : super(key: key);

  @override
  State<NumeroDisplay> createState() => _NumeroDisplayState();
}

class _NumeroDisplayState extends State<NumeroDisplay> {
  void numeroDisplay(String numero) {
    var variavel = int.tryParse(numero) as String;
    setState(() {
      variavel = variavel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
