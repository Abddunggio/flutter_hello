// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String addres;
  UserModel({
    required this.id,
    required this.name,
    required this.addres,
  });
  // halo ini lagi coding
  int getInt() {
    return 0;
  }

  UserModel copyWith({
    int? id,
    String? name,
    String? addres,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      addres: addres ?? this.addres,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'addres': addres,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      name: map['name'] as String,
      addres: map['addres'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(id: $id, name: $name, addres: $addres)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.addres == addres;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ addres.hashCode;
}
