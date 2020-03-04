// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nameController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NameController on NameControllerBase, Store {
  Computed<String> _$fullNameComputed;

  @override
  String get fullName =>
      (_$fullNameComputed ??= Computed<String>(() => super.fullName)).value;

  final _$nameAtom = Atom(name: 'NameControllerBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$lastNameAtom = Atom(name: 'NameControllerBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.context.enforceReadPolicy(_$lastNameAtom);
    _$lastNameAtom.reportObserved();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.context.conditionallyRunInAction(() {
      super.lastName = value;
      _$lastNameAtom.reportChanged();
    }, _$lastNameAtom, name: '${_$lastNameAtom.name}_set');
  }

  final _$NameControllerBaseActionController =
      ActionController(name: 'NameControllerBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$NameControllerBaseActionController.startAction();
    try {
      return super.changeName(newName);
    } finally {
      _$NameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String newLastName) {
    final _$actionInfo = _$NameControllerBaseActionController.startAction();
    try {
      return super.changeLastName(newLastName);
    } finally {
      _$NameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},lastName: ${lastName.toString()},fullName: ${fullName.toString()}';
    return '{$string}';
  }
}
