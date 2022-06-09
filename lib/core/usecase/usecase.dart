import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

/// this is the interface that enforces the usecase of the app
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// the type of parameter that the usecase doesnt need.
class NoParams extends Equatable{
  @override
  List<Object> get props => [];
}