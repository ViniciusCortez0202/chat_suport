class ClientModel {
  String name;
  String idClient;
  String profilePicture;

  ClientModel(
      {required this.name,
      required this.idClient,
      required this.profilePicture});

  Map toJson() {
    return {
      'name': name,
      'idSuport': idClient,
      'profilePicture': profilePicture,
    };
  }

  factory ClientModel.fromJson(json) {
    return ClientModel(
      name: json['name'],
      idClient: json['idClient'],
      profilePicture: json['profilePicture'],
    );
  }
}
