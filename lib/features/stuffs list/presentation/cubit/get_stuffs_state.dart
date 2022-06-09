import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/bucketlist_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/dictionary_entity.dart';
import 'package:get_stuff/features/stuffs%20list/domain/entities/joke_entity.dart';

part 'get_stuffs_state.freezed.dart';

@freezed
class GetStuffsState with _$GetStuffsState {
  const factory GetStuffsState.initial() = _$InitialGetStuffsState;

  const factory GetStuffsState.loading() = _$LoadingGetStuffsState;

  const factory GetStuffsState.error(String message) = _$ErrorGetStuffsState;

  const factory GetStuffsState.dictionary(DictionaryEntity dictionary) =
      _$DictionaryGetStuffsState;

  const factory GetStuffsState.jokes(List<JokeEntity> jokes) =
      _$JokeGetStuffsState;

  const factory GetStuffsState.bucketlist(BucketlistEntity bucketlist) =
      _$BucketlistGetStuffsState;
}
