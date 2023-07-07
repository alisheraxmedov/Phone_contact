import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phonecontact/Pages/ContactListPage.dart';
import '../Components/listAndClass.dart';

Contact newContact = Contact(name: 'name', phone: 'phoneNumber', email: "email");
class AddContact extends StatelessWidget {
  static const String routeName = '/addContact';
  AddContact({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    Contact copyContact = Contact(name: "name", phone: "phone", email: "email");
    newContact = copyContact;
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image(
                    image: AssetImage("lib/images/add2.jpg"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: TextFormField(
                maxLength: 15,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'))
                ],
                decoration: const InputDecoration(
                    hintText: 'Enter name', border: UnderlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please enter name';
                  }
                  copyContact.name = value;
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: TextFormField(
                maxLength: 13,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                decoration: const InputDecoration(
                    hintText: 'Enter phone number',
                    border: UnderlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid phone number';
                  }

                  copyContact.phone = value;
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                maxLength: 20,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-z 0-9]'))
                ],
                decoration: const InputDecoration(
                    hintText: 'Enter email adress',
                    border: UnderlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid email';
                  }
                  copyContact.email = value;
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      contacts.add(newContact);
                      Navigator.pushNamedAndRemoveUntil(
                          context, ContactListPage.routeName, (route) => false);
                    }
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
