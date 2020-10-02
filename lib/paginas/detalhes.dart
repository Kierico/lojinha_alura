import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/appbar.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';
import 'package:lojinha_alura/widgets/texto_card_detalhes.dart';

class Detalhes extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Movel movel;

  Detalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
          titulo: '',
          ehPaginaCarrinho: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 200,
            margin: EdgeInsets.all(16),
            child: CardDetalhes(
              movel: movel,
            ),
          ),
        ),
      ),
    );
  }
}
