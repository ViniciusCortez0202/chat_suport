// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'received_messages_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReceivedMessagesStore on _ReceivedMessagesStoreBase, Store {
  final _$messagesAtom = Atom(name: '_ReceivedMessagesStoreBase.messages');

  @override
  ObservableList<MessageModel> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(ObservableList<MessageModel> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  final _$_ReceivedMessagesStoreBaseActionController =
      ActionController(name: '_ReceivedMessagesStoreBase');

  @override
  void putMessages(MessageModel message) {
    final _$actionInfo = _$_ReceivedMessagesStoreBaseActionController
        .startAction(name: '_ReceivedMessagesStoreBase.putMessages');
    try {
      return super.putMessages(message);
    } finally {
      _$_ReceivedMessagesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messages: ${messages}
    ''';
  }
}
