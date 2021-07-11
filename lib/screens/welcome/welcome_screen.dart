import 'package:flutter/material.dart';
import 'package:flutter_demo/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO CHAT APP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            RoundedButton(text: 'SIGN UP')
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
