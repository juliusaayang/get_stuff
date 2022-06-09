import 'package:dartz/dartz.dart';
import 'package:get_stuff/core/error/failure.dart';
import 'package:get_stuff/core/usecase/usecase.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/bucketlist_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/repositories/stuffs_list_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BucketlistUsecase implements UseCase<BucketlistEntity, NoParams> {
  final StuffsListRepository stuffsListRepository;

  BucketlistUsecase(this.stuffsListRepository);
  @override
  Future<Either<Failure, BucketlistEntity>> call(NoParams params) {
    return stuffsListRepository.getBucketlist();
  }
}