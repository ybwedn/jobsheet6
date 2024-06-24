import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: TeksUtama(),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: TeksUtama.state.incrementIndex,
        ),
      ),
    ),
  );
}

class TeksUtama extends StatefulWidget {
  static StateTeksUtama state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'YOGA SURYA PRATAMA',
    'UNIKUL KHOLILAH',
    'ALIYA PUTRI NURAHMANI',
    'ERLAN DWIYANTO',
    'DANANG FIA',
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index = Random().nextInt(listNama.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        ),
      ],
    );
  }
}
