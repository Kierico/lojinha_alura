import 'package:flutter/material.dart';

class TextoCardDetalhes extends StatelessWidget {
  final String texto;

  TextoCardDetalhes({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Text(texto),
    );
  }
}
