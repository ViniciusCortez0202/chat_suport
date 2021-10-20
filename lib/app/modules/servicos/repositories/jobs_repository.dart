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
      throw("Erro ao tentar buscar os servicos: $e");
    }
    return jobs;
  }

  Future<ServicesModel> getDescriptionJob(String idEnterprise, String token, String idJob) async{
    ServicesModel job;

    try {
      var response = await _dio.get('/jobs/info/?enterprise=$idEnterprise&token=$token&idJob=$idJob');
      final data = response.data;
      job = ServicesModel.fromJson(data);
    } catch (e) {
      throw("Erro ao tentar obeter job $idJob: $e");
    }
    return job;
  }
}