import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Cheguei na outra página'),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/carrinho');
            },
            child: Text('Agora iremos ao carrinho'),
          )
        ],
      ),
    );
  }
}
