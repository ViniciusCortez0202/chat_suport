import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late CallModel call;
  const json = [
    {
      'id': '001',
      'data': '25/05/2000',
      'motivo': 'computador desligando',
      'service': 'suporte',
      'status': 'Fechado',
      'descricao': 'o computado fica ligando e desligando'
    },
    {
      'id': '002',
      'data': '25/06/2021',
      'motivo': 'nao emitindno nota',
      'service': 'Arpa',
      'status': 'Aberto',
      'descricao': 'o sistena não emite nota'
    }
  ];

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: SocketConection.local));
    dioAdapter = DioAdapter(dio: dio);
    call = CallModel(
      idCall: '001',
      date: '21/05/2021',
      descricao: "o servidor esta desligando",
      motivo: "servidor desligando",
      status: Status.Open,
      service: 'Infra',
    );
    dio.httpClientAdapter = dioAdapter;
  });

  List<CallModel> response;
  group('calls', () {
    test('get calls', () async {
      const route = '/getChamados';

      dioAdapter.onGet(route, (server) => server.reply(200, json));

      NovosChamadosRepository repository = NovosChamadosRepository(dio);
      response = await repository.getCalls();

      expect(response[0].idCall, "001");
      expect(response[1].idCall, "002");
      expect(response, isA<List<CallModel>>());
    });

    test('get calls thorows', () async {
      const route = '/getChamados';

      dioAdapter.onGet(
          route,
          (server) => server.throws(
              404, DioError(requestOptions: RequestOptions(path: route))));
      NovosChamadosRepository repository = NovosChamadosRepository(dio);

      expect(() async => await repository.getCalls(),
          throwsA("Não foi possível encontrar os chamados"));
    });

    test('get calls sort', () async {
      const route = '/getChamados';

      dioAdapter.onGet(route, (server) => server.reply(200, json));

      NovosChamadosRepository repository = NovosChamadosRepository(dio);
      response = await repository.getCalls();

      expect(response[0].status, Status.Open);
      expect(response[1].status, Status.Close);

    });
  });
}
