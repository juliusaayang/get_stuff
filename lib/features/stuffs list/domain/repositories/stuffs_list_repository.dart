import 'package:dartz/dartz.dart';
import 'package:get_stuff/core/error/failure.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/bucketlist_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/dictionary_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/joke_entity.dart';

abstract class StuffsListRepository{
  Future<Either<Failure, List<JokeEntity>>> getJokes(int number);

  Future<Either<Failure, DictionaryEntity>> getWord(String word);

  Future<Either<Failure, BucketlistEntity>> getBucketlist();
}