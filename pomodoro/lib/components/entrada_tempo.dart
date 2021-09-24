import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String title;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    Key? key,
    required this.valor,
    required this.title,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red,
              ),
              onPressed: this.dec,
            ),
            Text(
              "${this.valor} min",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red,
              ),
              onPressed: this.inc,
            ),
          ],
        ),
      ],
    );
  }
}
