import 'package:get_stuff/features/stuffs%20list/domain/entities/bucketlist_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bucketlist_model.g.dart';

@JsonSerializable()
class BucketlistModel extends BucketlistEntity{
  const BucketlistModel({
    required String item,
  }) : super(
    item: item,
  );

  /// a function that converts json to BucketListModel
  factory BucketlistModel.fromJson(Map<String, dynamic> json) =>
      _$BucketlistModelFromJson(json);
}