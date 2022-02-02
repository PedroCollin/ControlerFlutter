import 'package:flutter/material.dart';

import 'minhahome.dart';

void main(){
  runApp(meuApp());
}

class meuApp extends StatefulWidget {
  const meuApp({Key? key}) : super(key: key);

  @override
  _meuAppState createState() => _meuAppState();
}

class _meuAppState extends State<meuApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: minhaHome(),
    );
  }
}


