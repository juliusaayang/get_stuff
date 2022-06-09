import 'package:dio/dio.dart';
import 'package:get_stuff/core/constants/api/api.dart';
import 'package:get_stuff/core/error/error.dart';
import 'package:get_stuff/core/networkInfo/network_info.dart';
import 'package:get_stuff/features/stuffs%20list/data/models/bucketlist_model.dart';
import 'package:get_stuff/features/stuffs%20list/data/models/dictionary_model.dart';
import 'package:get_stuff/features/stuffs%20list/data/models/joke_model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

abstract class StuffsListDataSource {
  /// bucketlist logics
  Future<BucketlistModel> getBucketlist();

  /// get jokes logics
  Future<List<JokeModel>> getJokes(int number);

  /// get words from the dictionary logics
  Future<DictionaryModel> getWord(String word);
}

@LazySingleton(as: StuffsListDataSource)
class StuffsListDataSourceImpl implements StuffsListDataSource {
  StuffsListDataSourceImpl(this.networkInfo);
  final NetworkInfo networkInfo;
  final client = APIClient(
    Dio(
      BaseOptions(contentType: "application/json"),
    ),
    baseUrl: API.baseURL,
  );

  @override
  Future<BucketlistModel> getBucketlist() async {
    if (await networkInfo.isConnected) {
      final response = client.getBucketlist();
      return response;
    } else {
      throw const GetStuffException.noInternet();
    }
  }

  @override
  Future<List<JokeModel>> getJokes(int number) async {
    if (await networkInfo.isConnected){
      final response = client.getJokes(number);
      return response;
    } else {
      throw const GetStuffException.noInternet();
    }
  }

  @override
  Future<DictionaryModel> getWord(String word) async {
    if(await networkInfo.isConnected){
      final response = client.getWord(word);
      return response;
    } else {
      throw const GetStuffException.noInternet();
    }
  }
}
