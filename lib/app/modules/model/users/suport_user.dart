class SuportModel {
  String name;
  String idSuport;
  String profilePicture;

  SuportModel(
      {required this.name,
      required this.idSuport,
      required this.profilePicture});

  Map toJson() {
    return {
      'name': name,
      'idSuport': idSuport,
      'profilePicture': profilePicture,
    };
  }

  factory SuportModel.fromJson(json) {
    return SuportModel(
      name: json['name'],
      idSuport: json['idSuport'],
      profilePicture: json['profilePicture'],
    );
  }
}
