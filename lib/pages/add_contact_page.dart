import 'package:flutter/material.dart';
import 'package:navigation_4ahif/domain/contact.dart';

class AddContactPage extends StatelessWidget {
  static const route = '/add-contact';
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  AddContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(label: Text('Name')),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(label: Icon(Icons.call)),
              keyboardType: TextInputType.phone,
            ),
            IconButton(
              onPressed: () => addContact(context),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  void addContact(BuildContext context) {
    if (nameController.text.isEmpty || phoneController.text.isEmpty) {
      return;
    }
    final contact = Contact(nameController.text, phoneController.text);
    Navigator.of(context).pop(contact);
  }
}
