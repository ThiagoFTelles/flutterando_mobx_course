import 'package:mobx/mobx.dart';

part 'nameController.g.dart';

class NameController = NameControllerBase with _$NameController;

abstract class NameControllerBase with Store {
  @observable
  String name = "";

  @observable
  String lastName = "";

  @computed
  String get fullName => "$name $lastName";

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeLastName(String newLastName) {
    lastName = newLastName;
  }
}
