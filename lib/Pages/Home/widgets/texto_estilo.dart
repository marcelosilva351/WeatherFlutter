import 'package:flutter/material.dart';

//TEXTOSTYLE
class TextoEstilo extends StatelessWidget {
  final String texto;
  final Color corTexto;
  final double tamanhoTexto;
  TextoEstilo(this.texto, this.corTexto, this.tamanhoTexto);
  @override
  Widget build(BuildContext context) {
    return Text(texto,
        style: TextStyle(fontSize: tamanhoTexto, color: corTexto));
  }
}
