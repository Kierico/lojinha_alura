import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/texto_card_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Movel movel;

  CardDetalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          TextoCardDetalhes(texto: movel.titulo),
          TextoCardDetalhes(texto: movel.descricao),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Row(
              children: <Widget>[
                Text(
                  formatacaoReais.format(movel.preco),
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Text('Comprar'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
