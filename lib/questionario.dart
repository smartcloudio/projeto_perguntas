import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quantoResponder,
  });

  bool get temPerguntaSelecionda {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionda
        ? perguntas[perguntaSelecionada]['respostas']
        : null;
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        // Used ElevatedButton to Raised Deprecated in 2.12
        // https://blog.cod3r.com.br/botoes-no-flutter-2/
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'],
            () => quantoResponder(resp['pontuacao']),
          );
        }).toList(),
      ],
    );
  }
}
