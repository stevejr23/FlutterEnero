// import 'package:clase1/src/presentacion/cards.dart';
// import 'package:clase1/src/presentacion/collection_page.dart';
// import 'package:clase1/src/presentacion/diciembre.dart';
// import 'package:clase1/src/presentacion/splash.dart';
// import 'package:clase1/src/screens/notes_screen.dart';
// import 'package:flutter/material.dart';
//
// //rutas
// import 'package:clase1/src/rutas/rutas.dart';
//
// // pages
// import 'package:clase1/src/presentacion/ima.dart';
// import 'package:clase1/src/presentacion/fondoPantalla.dart';
// import 'package:clase1/src/presentacion/productos.dart';
// import 'package:clase1/src/presentacion/readjson.dart';
//
// import 'src/presentacion/menu.dart';
//
// // @dart=2.9
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Clase Flutter 1',
//       /*routes: rutas,
//       initialRoute: 'menu',*/
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         appBarTheme: AppBarTheme(
//           iconTheme: IconThemeData(color: Colors.black),
//         ),
//       ),
//       // home: const Menu(title: 'Hola Mundo'),
//       home: Splah(),
//       routes: {
//         '/productos': (context) =>
//             ListadoProductos(titulo: 'Listado Productos'),
//         '/fondoPantalla': (context) => FondoP(),
//         '/ima': (context) => imas(), //Imagenes
//         '/readjson': (context) => ReadJson(),
//         '/cards': (context) => card(),
//         '/collection_page': (context) => ColletionPage(),
//         '/diciembre': (context) => Diciembre(),
//         '/notes_screen': (context) => NotesPage(),
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clase1/src/screens/notes_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes SQLite';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        home: NotesPage(),
      );
}
