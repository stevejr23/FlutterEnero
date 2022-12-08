import 'package:flutter/material.dart';

// Widgets
import '../widgets/back_button.dart';
import '../widgets/Encabezados_Texto.dart';

import '../colors/colors.dart';

// Colores

class ColletionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.amberAccent,
            title: titulosText(texto: 'Collections', fontSize: 17.0),
            leading: Builder(builder: (BuildContext contex) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "collection-details");
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image(
              width: 165,
              height: 190,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
            ),
          ),
          Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: oscuroImagen,
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 35, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                titulosText(
                    texto: 'Producto1',
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                titulosText(
                    texto: '182 calorias',
                    color: Colors.amber,
                    fontSize: 15,
                    fontWeight: FontWeight.w300)
              ],
            ),
          )
        ],
      ));
}
