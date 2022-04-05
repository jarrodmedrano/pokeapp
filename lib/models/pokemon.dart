import './sprite.dart';

class Pokemon {
  final String name;
  //combine like ints
  final int height, id, weight;
  final Sprite sprites;

  const Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.sprites,
  });

  static Pokemon fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
      height: json['height'] as int,
      sprites: Sprite.fromJson(json['sprites'] as Map<String, dynamic>),
    );
  }
}
