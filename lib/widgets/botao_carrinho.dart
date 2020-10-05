import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/indicador_botao_carrinho.dart';

import '../main.dart';

class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 30, left: 20),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              topLeft: Radius.circular(100),
            ),
          ),
          child: _visibilidadeIndicadorCarrinho()),
    );
  }

  Widget _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.length > 0) {
      return Stack(children: [
        Image(
            height: 30,
            image: AssetImage('utilidades/assets/icones/carrinho.png')),
        IndicadorBotaoCarrinho()
      ]);
    }
    return Image(
        height: 30, image: AssetImage('utilidades/assets/icones/carrinho.png'));
  }
}
