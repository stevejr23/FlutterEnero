import 'package:clase1/src/presentacion/productos.dart';
import 'package:clase1/src/presentacion/menu.dart';
import 'package:flutter/material.dart';

//Paginas

final rutas = <String, WidgetBuilder>{
  'menu': (BuildContext context) => Menu(title: 'Holamundo'),
  'productos': (context) => ListadoProductos(titulo: 'Listado Productos')
};
