import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  title: "Trabalho",
                  valor: 25,
                ),
                EntradaTempo(
                  title: "Descanso",
                  valor: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
