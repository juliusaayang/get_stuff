import 'package:get_stuff/features/stuffs%20list/data/models/bucketlist_model.dart';
import 'package:get_stuff/features/stuffs%20list/data/models/dictionary_model.dart';
import 'package:get_stuff/features/stuffs%20list/data/models/joke_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart' as http;

part 'api_client.g.dart';

/// API key
const key = 'S8iImPJaU2JAksNPRxsqQw==hegw5YUQ1vGNoNZf';

@RestApi()
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  @http.Headers(
    <String, dynamic>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Api-Key': key,
    },
  )
  @GET(
    'bucketlist',
  )
  Future<BucketlistModel> getBucketlist();

  @http.Headers(
    <String, dynamic>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Api-Key': key,
    },
  )
  @GET(
    'jokes',
  )
  Future<List<JokeModel>> getJokes(@Query('limit') int number);

  @http.Headers(
    <String, dynamic>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Api-Key': key,
    },
  )
  @GET(
    'dictionary',
  )
  Future<DictionaryModel> getWord(@Query('word') String word);
}
