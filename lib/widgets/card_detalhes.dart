import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/texto_card_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;

  CardDetalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          TextoCardDetalhes(texto: movel.titulo),
          TextoCardDetalhes(texto: movel.descricao),
        ],
      ),
    );
  }
}
