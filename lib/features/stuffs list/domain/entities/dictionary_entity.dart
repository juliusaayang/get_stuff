import 'package:equatable/equatable.dart';

class DictionaryEntity extends Equatable {
  final String? definition;
  final String word;
  final bool valid;
  const DictionaryEntity({
    required this.definition,
    required this.valid,
    required this.word,
  });
  
  @override
  List<Object?> get props =>[
    definition,
    word,
    valid,
  ];
}
