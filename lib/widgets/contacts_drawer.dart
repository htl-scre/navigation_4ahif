import 'package:flutter/material.dart';
import 'package:navigation_4ahif/pages/tabbed_page.dart';

class ContactsDrawer extends StatelessWidget {
  const ContactsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('SnackBar')));
            },
            //Navigator.of(context).popAndPushNamed(TabbedPage.route),
            title: Text('Some Setting'),
            trailing: Icon(Icons.settings),
          ),
          Chip(
            avatar: Icon(Icons.sort),
            label: Text('label'),
          ),
        ],
      ),
    );
  }
}
