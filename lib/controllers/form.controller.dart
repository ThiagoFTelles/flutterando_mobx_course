import 'package:flutterando_mobx_course/models/client.model.dart';
import 'package:mobx/mobx.dart';

part 'form.controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  var client = Client();

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "este campo é obrigatório";
    } else if (client.name.length < 3) {
      return "seu nome precisa ter mais de 3 caracteres";
    }

    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "este campo é obrigatório";
    } else if (client.email.length < 3) {
      return "seu email precisa ter mais de 3 caracteres";
    } else if (!client.email.contains("@")) {
      return "informe um email válido";
    }

    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "este campo é obrigatório";
    } else if (client.cpf.length < 3) {
      return "seu cpf precisa ter mais de 3 caracteres";
    }

    return null;
  }
}
