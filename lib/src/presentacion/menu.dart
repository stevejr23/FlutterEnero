import 'package:flutter/material.dart';

// @dart=2.9
class Menu extends StatefulWidget {
  const Menu({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text("Inicio Menu"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.account_circle_rounded),
              tooltip: 'Mi perfil',
              onPressed: () {
                // Navigate to the second screen using a named route.

                Navigator.pushNamed(context, '/productos');
              }),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "aestheticlogo.png",
                width: 250,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    ElevatedButton(
                      child: const Text('Productos'),
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        // No se redirige a la clase second
                        Navigator.pushNamed(context, '/productos');
                      },
                      style: ElevatedButton.styleFrom(
                          // Color de los botones
                          primary: Colors.orange,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const Text('Imagenes'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ima');
                      },
                      style: ElevatedButton.styleFrom(
                          // Color de los botones
                          primary: Colors.redAccent,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const Text('Diciembre'),
                      onPressed: () {
                        Navigator.pushNamed(context, "/diciembre");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const Text('Fondo de Pantalla'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/fondoPantalla');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    ElevatedButton(
                      child: const Text('Coleccion'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/collection_page');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const Text('Read Json'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/readjson');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.cyan,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const Text('Cards'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/cards');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const Text('SQL'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sqlLite');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
