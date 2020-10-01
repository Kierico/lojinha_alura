import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomizada(
        titulo: 'Carrinho',
        ehPaginaCarrinho: true,
      ),
      body: Text('Agora estamos no carrinho'),
    );
  }
}
