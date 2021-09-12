import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/baseServicos.dart';
part 'description_controller.g.dart';

class DescriptionController = _DescriptionControllerBase with _$DescriptionController;

abstract class _DescriptionControllerBase with Store {

    @observable
  var service = null;

  @action
  searchDescrption(int idService){
    BaseServicos base = BaseServicos();
    service = base.services[idService];
  }
  
}