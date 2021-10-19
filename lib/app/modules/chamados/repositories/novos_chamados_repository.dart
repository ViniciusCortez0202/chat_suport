import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/model/enums/status_enum.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

class NovosChamadosRepository {
  late Dio _dio;

  NovosChamadosRepository(this._dio);

  Future<bool> sendCall(CallModel call) async {
    var response;

    try {
      response = await _dio.post("/calls/open", data: call.toJson());
    } catch (e) {
      throw ("Erro ao criar chamado: $e");
    }
    return response.statusCode == 201;
  }

  Future<List<CallModel>> getCalls() async {
    List<CallModel> listCalls;
    try {
      var response = await _dio.get("/calls/all");
      final list = response.data as List;
      listCalls = list.map((item) => CallModel.fromJson(item)).toList();
      listCalls.sort((a, b) {
        if (a.status == Status.Open) return -1;
        if(a.status == Status.Activate && b.status == Status.Close) return -1;
        return 1;
      });
    } catch (e) {
      throw ("Não foi possível encontrar os chamados: $e");
    }
    return listCalls;
  }
}
