import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection.dart';

class NovosChamadosRepository {
  late Dio _dio;

  NovosChamadosRepository(this._dio);

    sendCall(CallModel call) async{
    await _dio.post("${SocketConection.local}/chamados", data: call.toJson());
  }


    Future<List<CallModel>> getCalls() async{
    var response = await _dio.get("${SocketConection.local}/getChamados");
    final list = response.data as List;       
    return list.map((item) => CallModel.fromJson(item)).toList();;
  }

}


//CallModel(idCall: item['id'], date: item['data'], motivo: item['motivo'], descricao: item['descricao'], service: item['service'], status: item['status'])