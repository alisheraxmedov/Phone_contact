// ignore: file_names
import 'package:flutter/material.dart';
import 'package:phonecontact/Components/var.dart';
import 'package:phonecontact/Pages/AddContactPage.dart';
import 'package:phonecontact/Pages/personPage.dart';

import '../Components/listAndClass.dart';

// ignore: use_key_in_widget_constructors
class ContactListPage extends StatefulWidget {
  static const String routeName = "/";
  @override
  // ignore: library_private_types_in_public_api
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {

  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(children: <Widget>[
      drawerHeader,
      ListTile(title: const Text("Page 1"), onTap: () {}),
      ListTile(title: const Text("Page 2"), onTap: () {}),
      ListTile(title: const Text("Else other pages"), onTap: () {}),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Contacts'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            radius: 22.0,
            backgroundColor: colors[index],
            child: Text(contacts[index].name[0]),
          ),
          title: Text(
              contacts[index].name,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          
          trailing: const Icon(
            Icons.call,
            color: Colors.green,
          ),
          onTap: () => Navigator.pushNamed(context, PersonConstPage.routeName, arguments: index),
        ),
        itemCount: contacts.length,
      ),
      drawer: drawerItems,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddContact.routeName);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
