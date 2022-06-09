import 'package:get_stuff/features/stuffs%20list/domain/entities/dictionary_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dictionary_model.g.dart';

@JsonSerializable()
class DictionaryModel extends DictionaryEntity {
  DictionaryModel({
    required String word,
    required String definition,
    required bool valid,
  }) : super(
    word: word,
    definition: definition,
    valid: valid,
  );

  /// a function that converts json to DictionaryModel
  factory DictionaryModel.fromJson(Map<String, dynamic> json) =>
      _$DictionaryModelFromJson(json);
}