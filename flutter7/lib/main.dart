import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Ayuuu',
  ];
  var listWarna = [
    Color.fromARGB(255, 3, 122, 219),
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.cyan[50],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  offset: Offset.fromDirection(0.45, 50.0),
                  blurRadius: 5)
            ]),
        child: Column(children: [
          Text('Apa Kabar', textDirection: TextDirection.ltr),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: listWarna[index % listWarna.length]),
          ),
        ]));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksutama = TeksUtama();

  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: Column(
            children: [teksutama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: teksutama.state.incrementIndex,
        ),
      )));
}
