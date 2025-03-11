import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quran_app/core/common/injection.dart';
import 'package:quran_app/core/common/utils/network_constants.dart';
import 'package:quran_app/core/exeption.dart/custom_exception.dart';
import 'package:quran_app/home/data/models/all_surah_model.dart';
import 'package:quran_app/home/data/models/ayah_translate_model.dart';
import 'package:quran_app/home/data/models/surah_detail_model.dart';

abstract class HomeRemoteDatasource {
  Future<AllSurahModel?> getSurah();
  Future<SurahDetailModel?> getSurahDetails({required int surahId});
  Future<AyahTranslateModel?> getAyahs();
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  final dio = getIt<Dio>();

  @override
  Future<AllSurahModel?> getSurah() async {
    try {
      final response = await dio.get(NetworkConstants.allSurahUrl);
      if (response.statusCode == 200) {
        final result = response.data;
        // log(result.toString());
        return AllSurahModel.fromJson(result);
      }
    } catch (e) {
      throw ServerException(
          errorMessage: "Error happened while fetching AllSurah",
          statusCode: 500);
    }
    return null;
  }

  @override
  Future<SurahDetailModel?> getSurahDetails({required int surahId}) async {
    try {
      final response = await dio
          .get("${NetworkConstants.baseUrl}/surah/$surahId/ar.alafasy");
      if (response.statusCode == 200) {
        final result = response.data;
        // log(result.toString());
        return SurahDetailModel.fromJson(result);
      }
    } catch (e) {
      throw ServerException(
          errorMessage: "Error while fetching Surah details", statusCode: 500);
    }
    return null;
  }

  @override
  Future<AyahTranslateModel?> getAyahs() async {
    try {
      log("start ayah");
      final response = await dio.get(NetworkConstants.allAyahsUrl);
      log(response.data.toString());
      if (response.statusCode == 200) {
        final result = response.data;
        log(result.toString());
        return AyahTranslateModel.fromJson(result);
      }
    } catch (e) {
      throw ServerException(
          errorMessage: "Error happened while fetching AllAyahs",
          statusCode: 500);
    }
    return null;
  }
}
