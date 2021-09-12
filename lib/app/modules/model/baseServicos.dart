import 'package:projeto_chat_suporte/app/modules/model/services_mode.dart';

class BaseServicos{
   List<ServicesModel> services = [
    ServicesModel(
      idService: "1",
      description: """ 
        Alto desempenho, tecnologia e conhecimento são os verdadeiros combustíveis do resultado, pense que tudo isso pode estar agrupado em um único software. O Sistema CONTROL, foi desenvolvido com o foco no resultado da sua empresa, seja ela micro, pequena ou média, ele atende plenamente as suas necessidades.
      """,
      serviceName: "Arpa - Sistema Control",
      cost: "A Combinar",
    ),
        ServicesModel(
      idService: "2",
      description: """ 
        A infraestrutura de redes consiste em um sistema que integra diversos meios de transmissão para garantir uma implantação com capacidade programada, ou seja, que atenda à demanda de equipamentos da empresa.
      """,
      serviceName: "INFRAESTRUTURA DE REDES",
      cost: "R\$ 250,00/mês",
    ),
        ServicesModel(
      idService: "3",
      description: """ 
          O backup é um termo em inglês que significa "cópia de segurança". Trata-se de uma cópia dos arquivos importantes em outros locais, como um serviço em nuvem, um HD externo ou até mesmo um pen drive.
      """,
      serviceName: "BACKUP",
      cost: "R\$ 50,00/GB",
    ),
        ServicesModel(
      idService: "4",
      description: """ 
        O suporte técnico consiste em um serviço de prestação de assistência intelectual, tecnológica e material a um determinado cliente. Ou seja, por assistência intelectual, é considerado o conhecimento adquirido com base em estudo e experiência do profissional. Já a assistência tecnológica compreende serviços de manutenção, como revisões, regulagens, calibrações, consertos e atualizações de software, entre outros. A assistência material, por sua vez, inclui o fornecimento de peças de reposição.
      """,
      serviceName: "SuPORTE TÉCNICO",
      cost: "R\$ 50,00/MÁQUINA",
    ),
  ];
}