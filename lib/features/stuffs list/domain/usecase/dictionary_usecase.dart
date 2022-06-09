import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:get_stuff/core/error/failure.dart';
import 'package:get_stuff/core/usecase/usecase.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/dictionary_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/repositories/stuffs_list_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DictionaryUsecase implements UseCase<DictionaryEntity, DictionaryUsecaseParams> {
  final StuffsListRepository stuffsListRepository;

  DictionaryUsecase(this.stuffsListRepository);
  @override
  Future<Either<Failure, DictionaryEntity>> call(DictionaryUsecaseParams params) {
    return stuffsListRepository.getWord(params.word);
    }
}

class DictionaryUsecaseParams extends Equatable {
  final String word;

  const DictionaryUsecaseParams(this.word);

  @override
  List<Object?> get props => [
        word,
      ];
}
