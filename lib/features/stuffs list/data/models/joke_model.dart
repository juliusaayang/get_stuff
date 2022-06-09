import 'package:get_stuff/features/stuffs%20list/domain/entities/joke_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'joke_model.g.dart';

@JsonSerializable()
class JokeModel extends JokeEntity {
  /// creates a joke model instance
  const JokeModel({
    required String joke,
  }) : super(
          joke: joke,
        );

  /// a function that converts json to JokeModel instance
  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);

}
