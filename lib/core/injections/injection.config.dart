// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;

import '../../features/stuffs%20list/data/datasources/stuffs_list_datasource_impl.dart'
    as _i5;
import '../../features/stuffs%20list/data/repositories/stuffs_list_repository_impl.dart'
    as _i7;
import '../../features/stuffs%20list/domain/repositories/stuffs_list_repository.dart'
    as _i6;
import '../../features/stuffs%20list/domain/usecase/bucketlist_usecase.dart'
    as _i8;
import '../../features/stuffs%20list/domain/usecase/dictionary_usecase.dart'
    as _i9;
import '../../features/stuffs%20list/domain/usecase/jokes_usecase.dart' as _i10;
import '../../features/stuffs%20list/presentation/cubit/get_stuffs_cubit.dart'
    as _i11;
import '../networkInfo/network_info.dart' as _i4;
import 'register_module.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i4.NetworkInfo>(
      () => _i4.NetworkInfoImpl(get<_i3.InternetConnectionChecker>()));
  gh.lazySingleton<_i5.StuffsListDataSource>(
      () => _i5.StuffsListDataSourceImpl(get<_i4.NetworkInfo>()));
  gh.lazySingleton<_i6.StuffsListRepository>(
      () => _i7.StuffsListRepositoryImpl(get<_i5.StuffsListDataSource>()));
  gh.lazySingleton<_i8.BucketlistUsecase>(
      () => _i8.BucketlistUsecase(get<_i6.StuffsListRepository>()));
  gh.lazySingleton<_i9.DictionaryUsecase>(
      () => _i9.DictionaryUsecase(get<_i6.StuffsListRepository>()));
  gh.lazySingleton<_i10.JokesUsecase>(
      () => _i10.JokesUsecase(get<_i6.StuffsListRepository>()));
  gh.lazySingleton<_i11.GetStuffsCubit>(() => _i11.GetStuffsCubit(
      bucketlistUsecase: get<_i8.BucketlistUsecase>(),
      dictionaryUsecase: get<_i9.DictionaryUsecase>(),
      jokesUsecase: get<_i10.JokesUsecase>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
