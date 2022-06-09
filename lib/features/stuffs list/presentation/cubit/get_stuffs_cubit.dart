import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_stuff/core/error/failure.dart';
import 'package:get_stuff/core/usecase/usecase.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/bucketlist_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/dictionary_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/joke_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/usecase/bucketlist_usecase.dart';
import 'package:get_stuff/features/stuffs%20list/domain/usecase/dictionary_usecase.dart';
import 'package:get_stuff/features/stuffs%20list/domain/usecase/jokes_usecase.dart';
import 'package:get_stuff/features/stuffs%20list/presentation/cubit/get_stuffs_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetStuffsCubit extends Cubit<GetStuffsState> {
  GetStuffsCubit({
    required this.bucketlistUsecase,
    required this.dictionaryUsecase,
    required this.jokesUsecase,
  }) : super(
          const GetStuffsState.initial(),
        );

  final BucketlistUsecase bucketlistUsecase;
  final DictionaryUsecase dictionaryUsecase;
  final JokesUsecase jokesUsecase;

  Future<void> getBucketlist() async {
    emit(const GetStuffsState.loading());
    final result = await bucketlistUsecase.call(NoParams());
    result.fold(
      (l) => emit(
        GetStuffsState.error(
          ConvertFailureToString()(l),
        ),
      ),
      (r) => emit(
        GetStuffsState.bucketlist(r),
      ),
    );
  }

  Future<void> getDictionary(String word) async {
    emit(
      const GetStuffsState.loading(),
    );
    final result = await dictionaryUsecase.call(
      DictionaryUsecaseParams(word),
    );
    result.fold(
      (l) => emit(
        GetStuffsState.error(
          ConvertFailureToString()(l),
        ),
      ),
      (r) => emit(
        GetStuffsState.dictionary(r),
      ),
    );
  }

  Future<void> getJokes(int number) async {
    emit(
      const GetStuffsState.loading(),
    );
    final result = await jokesUsecase.call(
      JokesUsecaseParams(number),
    );
    result.fold(
      (l) => emit(
        GetStuffsState.error(
          ConvertFailureToString()(l),
        ),
      ),
      (r) => emit(
        GetStuffsState.jokes(r),
      ),
    );
  }
}
