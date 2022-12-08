//import 'dart:html';

import 'package:flutter/material.dart';

class Diciembre extends StatelessWidget {
  const Diciembre({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taller Cards'),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                  width: 700,
                  height: 350,
                  padding: new EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.criptonoticias.com/wp-content/uploads/2018/12/ethereum-donativo-tarjeta-navidad-caridad-1024x622.jpg"),
                        fit: BoxFit.cover),
                  ),
                  margin: EdgeInsets.all(10),
                  child: Card(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: const ListTile(
                              leading: Icon(Icons.ac_unit_outlined, size: 60),
                              title: Text(
                                'Feliz Navidad y Año nuevo 2023',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w900,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 10.0, // shadow blur
                                      color: Colors.white, // shadow color
                                      offset: Offset(2.0,
                                          2.0), // how much shadow will be shown
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.right,
                              ),
                              subtitle: Text(
                                'El mejor regalo de cada navidad es compartir y estar alado de estudiantes como ustedes.  Son los deseos de tu profesor de Desarrollo de Plataformas Móviles. .',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red)),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Row(
                                  children: const [
                                    Icon(Icons.wine_bar_sharp),
                                    Text("Feliz 2023")
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
