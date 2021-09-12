// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openChats_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OpenChatsStore on _OpenChatsStoreBase, Store {
  final _$enterpriseListAtom = Atom(name: '_OpenChatsStoreBase.enterpriseList');

  @override
  ObservableList<EntepriseChat> get enterpriseList {
    _$enterpriseListAtom.reportRead();
    return super.enterpriseList;
  }

  @override
  set enterpriseList(ObservableList<EntepriseChat> value) {
    _$enterpriseListAtom.reportWrite(value, super.enterpriseList, () {
      super.enterpriseList = value;
    });
  }

  final _$_OpenChatsStoreBaseActionController =
      ActionController(name: '_OpenChatsStoreBase');

  @override
  dynamic readerList(EntepriseChat enterprise) {
    final _$actionInfo = _$_OpenChatsStoreBaseActionController.startAction(
        name: '_OpenChatsStoreBase.readerList');
    try {
      return super.readerList(enterprise);
    } finally {
      _$_OpenChatsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enterpriseList: ${enterpriseList}
    ''';
  }
}
