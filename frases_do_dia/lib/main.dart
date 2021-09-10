import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _phrases = [
    "Se não pode ajudar atrapalhe o importante é participar",
    "Na minha geladeira só tem água, ar e luz o ambiente perfeito para fotossíntese",
    "Se existe uma definição maior pra merda o nome é Juaum Paulu é um adjetivo substantivo de nome próprio",
    "A vontade de rir é grande mas a de chorar é maior",
    "O que foi que fiz com a minha vida jesus?",
    "Eu sou um merda meu irmão",
    "Será que um dia eu vou vencer na vida?",
    "É daqui pra pior",
    "É triste mas é a vida..."
  ];

  var _phrase = "Clique para gerar uma frase!";

  void _generatePhrase(){
    var randomNum = Random().nextInt(_phrases.length);
    setState(() {
      _phrase = _phrases[randomNum];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
           //width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                 Text(
                  _phrase,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                    child: const Text(
                      "Nova frase",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: _generatePhrase,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      //change background color of button
                      onPrimary: Colors.greenAccent,
                      //change text color of button
                    ))
              ],
            ),
          ),
        ));
  }
}
