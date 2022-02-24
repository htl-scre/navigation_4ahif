import 'package:flutter/material.dart';
import 'package:navigation_4ahif/domain/contact.dart';
import 'package:navigation_4ahif/pages/contact_details_page.dart';
import 'package:navigation_4ahif/widgets/contacts_drawer.dart';

import 'add_contact_page.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  var contacts = [
    Contact("Alfred", "0123"),
    Contact("Bernd", "01234"),
    Contact("Christina", "01235"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ContactsDrawer(),
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            onTap: () {
              Navigator.of(context)
                  //    .push(
                  //  MaterialPageRoute(
                  //      builder: (_) => ContactDetailsPage(contact.name)),
                  //);
                  .pushNamed(
                ContactDetailsPage.route,
                arguments: contact.name,
              );
            },
            title: Text(contact.name),
            subtitle: Text(contact.telephoneNumber),
          );
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddContactPage(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _openAddContactPage(BuildContext context) {
    Navigator.of(context)
        //    .push(
        //  MaterialPageRoute(
        //    builder: (_) => AddContactPage(),
        //  ),
        //)
        .pushNamed(AddContactPage.route)
        .then((newContact) {
      if (newContact == null) {
        return;
      }
      setState(() {
        contacts.add(newContact as Contact);
      });
    });
  }
}
