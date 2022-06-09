import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:get_stuff/core/error/failure.dart';
import 'package:get_stuff/core/usecase/usecase.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/joke_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/repositories/stuffs_list_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class JokesUsecase implements UseCase<List<JokeEntity>, JokesUsecaseParams> {
  final StuffsListRepository stuffsListRepository;

  JokesUsecase(this.stuffsListRepository);

  @override
  Future<Either<Failure, List<JokeEntity>>> call(JokesUsecaseParams params) {
    return stuffsListRepository.getJokes(params.number);
  }
}

class JokesUsecaseParams extends Equatable {
  final int number;

  const JokesUsecaseParams(this.number);

  @override
  List<Object?> get props => [
        number,
      ];
}
