// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//------------------------------------------
//------------------------------------------
//------------------------------------------
List<String> Harfler = <String>['A', 'B', 'C'];
List<int> renkKodlari = <int>[600, 500, 100];
//------------------------------------------
//------------------------------------------
//------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Ogreniyorum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("7Aralik"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------

            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: Harfler.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[renkKodlari[index]],
                    child: Center(child: Text("Harf:" + Harfler[index])),
                  );
                })
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
            //------------------------------------------
          ],
        ),
      ),
    );
  }
}
