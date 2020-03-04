import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_mobx_course/controllers/form.controller.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final controller = FormController();

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                return _textField(
                  errorText: controller.validateName,
                  labelText: "Nome",
                  onChanged: controller.client.changeName,
                );
              },
            ),
            Observer(
              builder: (_) {
                return _textField(
                  errorText: controller.validateEmail,
                  labelText: "e-mail",
                  onChanged: controller.client.changeEmail,
                );
              },
            ),
            Observer(
              builder: (_) {
                return _textField(
                  errorText: controller.validateCpf,
                  labelText: "CPF",
                  onChanged: controller.client.changeCpf,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
