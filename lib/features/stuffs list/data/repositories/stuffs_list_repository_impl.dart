import 'package:get_stuff/core/error/error.dart';
import 'package:get_stuff/features/stuffs%20list/data/datasources/stuffs_list_datasource_impl.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/joke_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/dictionary_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/bucketlist_entity.dart';
import 'package:get_stuff/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:get_stuff/features/stuffs%20list/domain/repositories/stuffs_list_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: StuffsListRepository)
class StuffsListRepositoryImpl implements StuffsListRepository {
  final StuffsListDataSource dataSource;

  StuffsListRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, BucketlistEntity>> getBucketlist() async {
    try {
      final bucketlist = await dataSource.getBucketlist();
      return Right(bucketlist);
    } catch (e) {
      if (e is GetStuffException) {
        return Left(
          e.map(
            server: (exception) => Failure.serverError(exception.message),
            noInternet: (exception) => const Failure.noInternet(),
            unknown: (exception) => const Failure.unknown(),
            app: (exception) => const Failure.app(),
          ),
        );
      }
      return const Left(
        Failure.unknown(),
      );
    }
  }

  @override
  Future<Either<Failure, List<JokeEntity>>> getJokes(int number) async {
    try{
      final jokes = await dataSource.getJokes(number);
      return Right(jokes);
    } catch (e) {
      if (e is GetStuffException) {
        return Left(
          e.map(
            server: (exception) => Failure.serverError(exception.message),
            noInternet: (exception) => const Failure.noInternet(),
            unknown: (exception) => const Failure.unknown(),
            app: (exception) => const Failure.app(),
          ),
        );
      }
      return const Left(
        Failure.unknown(),
      );
    } 
  }

  @override
  Future<Either<Failure, DictionaryEntity>> getWord(String word) async {
    try{
      final dictionary = await dataSource.getWord(word);
      return Right(dictionary);
    } catch (e) {
      if (e is GetStuffException) {
        return Left(
          e.map(
            server: (exception) => Failure.serverError(exception.message),
            noInternet: (exception) => const Failure.noInternet(),
            unknown: (exception) => const Failure.unknown(),
            app: (exception) => const Failure.app(),
          ),
        );
      }
      return const Left(
        Failure.unknown(),
      );
    }
  }
}
