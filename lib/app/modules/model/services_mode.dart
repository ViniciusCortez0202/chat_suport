class ServicesModel {
  String idService;
  String serviceName;
  String description;
  String cost;
  bool isHire;
  String dateHire;

  ServicesModel({
    required this.idService,
    required this.serviceName,
    required this.cost,
    required this.description,
    required this.isHire,
    required this.dateHire,
  });

  factory ServicesModel.fromJson(json) {
    return ServicesModel(
        idService: json['idJob'],
        serviceName: json['name'],
        description: json['description'],
        cost: json['cost'],
        isHire: json['isHire'],
        dateHire: json['dateHire']);
  }

  Map toJson(){
    return {
      'idService': idService,
      'serviceName': serviceName,
      'description': description,
      'cost': cost,
      'isHire': isHire,
      'dateHire': dateHire,
    };
  }
}
