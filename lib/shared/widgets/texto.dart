import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String texto;
  final Color? cor;
  const TextLabel({
    Key? key,
    required this.texto,
    required this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: cor, borderRadius: BorderRadius.circular(7)),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        textScaleFactor: 2,
      ),
    );
  }
}
