

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quran_app/home/data/datasource/home_remote_dataSource.dart';
import 'package:quran_app/home/domain/usecase/get_ayah_translate_usecase.dart';
import 'package:quran_app/home/domain/usecase/get_surahDetails_usecase.dart';
import 'package:quran_app/home/domain/usecase/get_surah_usecase.dart';
import 'package:quran_app/home/presentation/controller/provider/home_provider.dart';

final getIt = GetIt.instance;

Future<void> initinjection() async {
  getIt
    .registerLazySingleton(
      () => Dio(),
    );

  await homeInit();
}

Future<void> homeInit() async {
  getIt
    ..registerLazySingleton(
      () => GetSurahUsecase(homeRepo: getIt()),
    )
    ..registerLazySingleton(
      () => GetSurahdetailsUsecase(homeRepo: getIt()),
    )
    ..registerLazySingleton(
      () => GetAyahTranslateUsecase(homeRepo: getIt()),
    )
    // ..registerLazySingleton<HomeRepo>(
    //   () => HomeRepoImpl(homeRemoteDatasource: getIt()),
    // )
    ..registerLazySingleton<HomeRemoteDatasource>(
      () => HomeRemoteDatasourceImpl(),
    )
    ..registerLazySingleton<HomeProvider>(
      () => HomeProvider(),
    );
}
