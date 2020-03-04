import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_mobx_course/controllers/nameController.dart';

class MyNamePage extends StatelessWidget {
  final controller = NameController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx computed value"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.changeName,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.changeLastName,
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) {
                return Text('${controller.fullName}');
              },
            )
          ],
        ),
      ),
    );
  }
}
