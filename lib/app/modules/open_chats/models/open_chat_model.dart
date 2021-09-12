import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

class OpenChatModel {
  final CallModel callModel;
  late String _lastMessage;
  late bool _isReader;


  OpenChatModel(this.callModel, this._isReader, this._lastMessage);

  set lastMessage(String value) => _lastMessage = value;
  String get lasMessage => _lastMessage;

  set isReader(bool value) => _isReader = value;
  bool get isReader => _isReader;

}