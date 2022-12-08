import 'package:flutter/material.dart';

// @dart=2.9
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

import '../colors/colors.dart';

class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Card'),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                /*Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.orange),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                    child: Center(
                      child: Text(
                        "Ejemplo d card",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),*/
                /*   Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.purple,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Image.asset("logo.jpg"),
                        Text("Curso de comida"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.alarm),
                          tooltip: 'Mensaje',
                        )
                      ],
                    ),
                  ),
                ),*/
                /*   Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(
                            Icons.map,
                            size: 45,
                          ),
                          title: Text("Titulo del card"),
                          subtitle: Text("Subtitulo de la card"),
                        )
                      ],
                    ),
                  ),
                ),*/
                /*   Container(
                  width: 300,
                  height: 100,
                  padding: new EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.teal,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album, size: 60),
                          title: Text(
                            "Titulo",
                            style: TextStyle(fontSize: 30.0),
                          ),
                          subtitle: Text(
                            "Mejor album del año",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            new ElevatedButton(
                              onPressed: () {},
                              child: Text("Play"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrangeAccent,
                                  onPrimary: Colors.white,
                                  elevation: 5,
                                  shadowColor: Colors.black12),
                            ),
                            new ElevatedButton(
                              onPressed: () {},
                              child: Text("Stop"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrangeAccent,
                                  onPrimary: Colors.white,
                                  elevation: 5,
                                  shadowColor: Colors.black12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),*/
                /* Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.greenAccent[100],
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 100,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                            radius: 100,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Desarrollo en Flutter",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.green[900],
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Informacion de flutter",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () => 'Null',
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.orange)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text("Visitar")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/
                _sliderCards(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sliderCards(BuildContext context) {
    return Container(
      width: 600.0,
      height: 400.0,
      child: Card(
        elevation: 50,
        child: Column(
          children: [
            SizedBox(
              height: 300.0,
              width: 600.0,
              child: Image.network(
                'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Python',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(6, 57, 133, 1),
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            color: Color.fromRGBO(6, 57, 133, 1),
                            iconSize: 35,
                            tooltip: 'Mensaje',
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            iconSize: 35,
                            color: Color.fromRGBO(6, 57, 133, 1),
                            tooltip: 'Mensaje',
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Es un lenguaje de programación ampliamente utilizado en las aplicaciones web, el desarrollo de software, la ciencia de datos y el machine learning (ML). Los desarrolladores utilizan Python porque es eficiente y fácil de aprender, además de que se puede ejecutar en muchas plataformas diferentes.',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(6, 57, 133, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(6, 57, 133, 1)),
                          onPressed: () {},
                          child: const Text("Mas informacion"),
                        ),
                      ])
                ])),
          ],
        ),
      ),
    );
  }
}
