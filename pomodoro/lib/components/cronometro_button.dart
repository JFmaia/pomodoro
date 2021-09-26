import 'package:flutter/material.dart';

class CronometroButton extends StatelessWidget {
  final String text;
  final IconData icone;
  final void Function()? click;

  const CronometroButton({
    Key? key,
    required this.text,
    required this.icone,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        textStyle: TextStyle(
          fontSize: 25,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              this.icone,
              size: 35,
            ),
          ),
          Text(this.text),
        ],
      ),
      onPressed: this.click,
    );
  }
}
