import 'package:flutter/material.dart';

final numberController = TextEditingController();

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 100.0,
            ),
            TextField(
              controller: numberController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.none,
            ),
            GridView.builder(
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (contex, index) => Container(
                height: 25.0,
                width: 100.0,
                color: Colors.red,
                child: Text("$index"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
