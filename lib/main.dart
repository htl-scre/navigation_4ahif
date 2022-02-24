import 'package:flutter/material.dart';
import 'package:navigation_4ahif/pages/add_contact_page.dart';
import 'package:navigation_4ahif/pages/contact_details_page.dart';
import 'package:navigation_4ahif/pages/contacts_page.dart';
import 'package:navigation_4ahif/pages/tabbed_page.dart';

void main() {
  runApp(ContactsApp());
}

class ContactsApp extends StatelessWidget {
  const ContactsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      routes: {
        '/': (context) => ContactsPage(),
        AddContactPage.route: (context) => AddContactPage(),
        ContactDetailsPage.route: (context) => ContactDetailsPage(),
        TabbedPage.route: (context) => TabbedPage(),
      },
    );
  }
}
