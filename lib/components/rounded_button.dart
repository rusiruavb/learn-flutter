import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color = Colors.deepPurple;
  final Color textColor = Colors.white;

  const RoundedButton({Key? key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      width: MediaQuery.of(context).size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: color,
          onPressed: () {
            print('Button clicked');
          },
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontFamily: 'SF Pro Display', fontSize: 18),
          ),
        ),
      ),
    );
  }
}
