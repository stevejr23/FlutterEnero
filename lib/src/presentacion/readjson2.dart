import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:clase1/src/providers/provider_product.dart';
import 'package:http/http.dart' as http;

class ReadJson extends StatelessWidget {
  const ReadJson({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    // getData().then((response) {
    //   // List<dynamic> data = jsonDecode(response);
    //   for (var item in response) {
    //     print(item['id']);
    //     print(item['name']);
    //     print(item['image']);
    //   }
    // });

    return Scaffold(
      appBar: AppBar(
        title: Text('Lectura de archivos JSON'),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<dynamic>;
            print(items);
            return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 50,
                          margin: EdgeInsets.only(right: 40.0),
                          child: Image(
                            image:
                                NetworkImage(items[index]['image'].toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '${items[index]['id']}',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              items[index]['name'],
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<dynamic>> getData() async {
    String url = "https://rickandmortyapi.com/api/character/1,2,3,183";
    final response = await http.get(Uri.parse(url));
    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
// Future<List<ProductDataModel>> ReadJsonData() async {
//   final jsondata =
//   await getData();
//   final list = json.decode(jsondata) as List<dynamic>;
//
//   return list.map((e) => ProductDataModel.fromJson(e)).toList();
// }
}
