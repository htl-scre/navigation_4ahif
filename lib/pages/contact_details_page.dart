import 'package:flutter/material.dart';

class ContactDetailsPage extends StatelessWidget {
  static const route = '/contact-details';
  //final String name;

  ContactDetailsPage();

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
