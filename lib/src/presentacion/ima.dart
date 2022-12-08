import 'package:flutter/material.dart';

import 'dart:ui';

class imas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Imagen extraida desde el navegador
            SizedBox(
              height: 300.0,
              width: 450.0,
              child: Image.network(
                'https://images.unsplash.com/photo-1550023160-6b9804c1fc7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                fit: BoxFit.fitWidth,
              ),
            ),
            // Imagen extraida de manera local
            SizedBox(
              height: 350.0,
              width: 250.0,
              child: Image.asset(
                'assets/img/goku.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
