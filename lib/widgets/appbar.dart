import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  AppBarCustomizada({this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo, style: TextStyle(color: Colors.black)),
      titleSpacing: 0.0,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      actions: [BotaoCarrinho()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
