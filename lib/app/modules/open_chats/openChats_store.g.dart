// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openChats_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OpenChatsStore on _OpenChatsStoreBase, Store {
  final _$chatListAtom = Atom(name: '_OpenChatsStoreBase.chatList');

  @override
  ObservableList<OpenChatModel> get chatList {
    _$chatListAtom.reportRead();
    return super.chatList;
  }

  @override
  set chatList(ObservableList<OpenChatModel> value) {
    _$chatListAtom.reportWrite(value, super.chatList, () {
      super.chatList = value;
    });
  }

  final _$_OpenChatsStoreBaseActionController =
      ActionController(name: '_OpenChatsStoreBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_OpenChatsStoreBaseActionController.startAction(
        name: '_OpenChatsStoreBase.getList');
    try {
      return super.getList();
    } finally {
      _$_OpenChatsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chatList: ${chatList}
    ''';
  }
}
