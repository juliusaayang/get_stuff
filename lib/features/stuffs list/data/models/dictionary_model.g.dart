// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryModel _$DictionaryModelFromJson(Map<String, dynamic> json) =>
    DictionaryModel(
      word: json['word'] as String,
      definition: json['definition'] as String,
      valid: json['valid'] as bool,
    );

Map<String, dynamic> _$DictionaryModelToJson(DictionaryModel instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'word': instance.word,
      'valid': instance.valid,
    };
