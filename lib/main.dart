import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';
import 'inicio.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio1 Mapas',
      initialRoute: '/',
      routes: { '/': (context) => Inicio(),
        '/mapa1': (context) => const Mapa1(),
        '/mapa2': (context) => const Mapa2(),
        '/mapa3': (context) => const Mapa3(),
      },
    );
  }
}