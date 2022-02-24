import 'package:flutter/material.dart';

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('asd')),
      body: Text('Keine Scaffolds in tabs'),
    );
  }
}
