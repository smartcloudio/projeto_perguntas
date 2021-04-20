import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.green,
          elevation: 8,
          shadowColor: Colors.red,
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
