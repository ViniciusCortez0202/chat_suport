import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/model/enums/status_enum.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

class NovosChamadosRepository {
  late Dio _dio;

  NovosChamadosRepository(this._dio);

    sendCall(CallModel call) async {
    await _dio.post("/calls/open", data: call.toJson());
  }


    Future<List<CallModel>> getCalls() async{
       List<CallModel> listCalls;
      try {
         var response = await _dio.get("/calls/all");        
         final list = response.data as List; 
         listCalls = list.map((item) => CallModel.fromJson(item)).toList(); 
         listCalls.sort((a, b) => a.status == Status.Open ? -1 : a.status == Status.Activate ? -1 : 1);
      } catch (e) {
        throw ("Não foi possível encontrar os chamados: $e");
      }
      return listCalls;
  }

}