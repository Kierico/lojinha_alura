import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/appbar.dart';

class Detalhes extends StatelessWidget {
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
        body: Column(
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/carrinho');
              },
              child: Text('Agora iremos ao carrinho'),
            )
          ],
        ),
      ),
    );
  }
}
