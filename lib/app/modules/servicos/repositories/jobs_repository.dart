import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/model/services_mode.dart';

class JobsRespository{
  late Dio _dio;

  JobsRespository(this._dio);

  Future<List<ServicesModel>> getAllJobs(String idEnterprise, String token) async {
    List<ServicesModel> jobs;
    try {
       var response = await _dio.get('/jobs/all');
       final data = response.data as List;
       jobs = data.map((item) => ServicesModel.fromJson(item)).toList();
    } catch (e) {
      throw("Erro ao tentar buscar os servicos $e");
    }

    return jobs;
  }
}