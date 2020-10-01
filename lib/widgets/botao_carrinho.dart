import 'package:flutter/material.dart';

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
        child: Image(
          image: AssetImage('utilidades/assets/icones/carrinho.png'),
          height: 30,
        ),
      ),
    );
  }
}
