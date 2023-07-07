import 'package:flutter/material.dart';
import 'package:phonecontact/Pages/EditPage.dart';
import '../Components/listAndClass.dart';

// ignore: must_be_immutable
class PersonConstPage extends StatelessWidget {
  static const String routeName = "/personPage";
  int index;
  PersonConstPage(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    Contact(name: "name1", phone: "phone1", email: "email1");
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, EditPage.routeName, arguments: index);
            },
            child: const Text(
              "EDIT",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade900,
                    Colors.blue.shade800,
                    const Color.fromARGB(255, 23, 107, 231),
                    Colors.pink.shade800,
                    Colors.pink.shade900
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Center(
                    child: SizedBox(
                      height: 200.0,
                      width: 200.0,
                      child: Image(
                        image: AssetImage("lib/images/add4.png"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Center(
                    child: Text(
                      contacts[index].name,
                      style:
                          const TextStyle(fontSize: 35.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          contacts[index].phone,
                          style: const TextStyle(
                              fontSize: 26.0, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone,
                                color: Colors.green.shade700, size: 30.0),
                            const SizedBox(width: 20.0),
                            const Icon(Icons.message,
                                color: Colors.yellow, size: 30.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          contacts[index].email,
                          style: const TextStyle(
                              fontSize: 24.0, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Icon(Icons.telegram,
                                color: Colors.blue.shade700, size: 30.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Divider(thickness: 12.0),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View call history",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
