import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection.dart';

class NovosChamadosRepository {
  late Dio _dio;

  NovosChamadosRepository(this._dio);

    sendCall(CallModel call) async{
    await _dio.post("/chamados", data: call.toJson());
  }


    Future<List<CallModel>> getCalls() async{
       List<CallModel> listCalls;
      try {
         var response = await _dio.get("/getChamados");
         var list = response.data as List; 
         listCalls = list.map((item) => CallModel.fromJson(item)).toList(); 
         listCalls.sort((a, b) => a.status == Status.Open ? -1 : a.status == Status.Activate ? -1 : 1);             
      } catch (e) {
        throw ("Não foi possível encontrar os chamados");
      }
      return listCalls;
  }

}