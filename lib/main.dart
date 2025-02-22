import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tothemoon',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(26, 26, 26, 1.0)
        ),
      home: HomePage()
    );
  }
}
