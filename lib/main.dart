import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    '"Seja a mudança que você quer ver no mundo." \n-Mahatma Gandhi',
    '"A vida é como andar de bicicleta. Para ter equilíbrio, você tem que se manter em movimento. \n-Albert Einstein',
    'Que seja infinito o que nos faz bem.',
    'Melhor que rir, é rir com alguém ao seu lado. Sorriso dividido é sorriso dobrado.'
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase';

  void _gerarFrase() {
    var numeroAleatorio = Random().nextInt(_frases.length);
    print(numeroAleatorio);

    setState(() {
      _fraseGerada = _frases[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logo.png'),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () {
                    _gerarFrase();
                    print('Botao pressionado');
                  },
                  child: Text(
                    'Nova frase',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
