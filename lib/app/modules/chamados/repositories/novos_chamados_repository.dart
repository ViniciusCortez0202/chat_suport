import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection.dart';

class NovosChamadosRepository {
  late Dio _dio;

  NovosChamadosRepository(this._dio);

    sendCall(CallModel call) async{
    await _dio.post("${SocketConection.local}/chamados", data: call.toJson());
  }

}