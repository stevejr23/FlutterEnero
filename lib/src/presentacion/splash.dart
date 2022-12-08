import 'package:flutter/material.dart';
import 'package:clase1/src/presentacion/menu.dart';

class Splah extends StatefulWidget {
  const Splah({Key? key}) : super(key: key);

  @override
  _SplahState createState() => _SplahState();
}

class _SplahState extends State<Splah> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Menu(
          title: 'Flutter',
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.blueAccent,
            ),
            Container(
              child: Column(
                children: [Image.asset('assets/img/goku.png'), Text('Bienvenidos ')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
