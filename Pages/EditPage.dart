import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phonecontact/Components/listAndClass.dart';
import 'package:phonecontact/Pages/AddContactPage.dart';
import 'package:phonecontact/Pages/ContactListPage.dart';


final GlobalKey<FormState> key_ = GlobalKey<FormState>();
// ignore: must_be_immutable
class EditPage extends StatefulWidget {
  static const String routeName = "/editContact";
  int index;
  EditPage(this.index, {super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  Contact editContact = Contact(name: "name", phone: "phone", email: "email");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: key_,
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
                    hintText: "Enter name", border: UnderlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please enter name';
                  }
                  editContact.name = value;
                  // newContact.name = value;
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
                  editContact.phone = value;
                  // newContact.phone = value;
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
                  editContact.email = value;
                  // newContact.email = value;
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
                    if (key_.currentState!.validate()) {
                      contacts.remove(newContact);
                      contacts.add(editContact);
                      Navigator.pushNamedAndRemoveUntil(context, ContactListPage.routeName, (route) => false);
                    }
                  },
                  child: const Text('Edit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class EditContact extends StatefulWidget {
//   const EditContact({super.key});

//   @override
//   State<EditContact> createState() => _EditContactState();
// }

// class _EditContactState extends State<EditContact> {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//                   onPressed: () {
//                     if (key_.currentState!.validate()) {
//                       contacts[index].name;
//                       Navigator.pushNamedAndRemoveUntil(context, ContactListPage.routeName, (route) => false);
//                     }
//                   },
//                   child: const Text('Edit'),
//                 );
//   }
// }
