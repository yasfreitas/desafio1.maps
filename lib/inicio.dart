import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Mapas'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 250, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text('Mapa 1'),
                      onPressed: (){
                        Navigator.pushNamed(context, '/mapa1');
                      }
                  ),
                  ElevatedButton(
                      child: const Text('Mapa 2'),
                      onPressed: (){
                        Navigator.pushNamed(context, '/mapa2');
                      }
                  ),
                  ElevatedButton(
                      child: const Text('Mapa 3'),
                      onPressed: (){
                        Navigator.pushNamed(context, '/mapa3');
                      }
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
