import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: _deviceHeight,
              width: _deviceWidth,
              color: Colors.red,
              child: _text())),
    );
  }

  Widget _text() {
    return const Text(
      "Hello World",
      style: TextStyle(
        color: Colors.white,
        fontSize: 69,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _logo() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/Logo.png"),
        ),
      ),
    );
  }
}
