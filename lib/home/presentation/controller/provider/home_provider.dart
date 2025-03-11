import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:quran_app/core/common/injection.dart';
import 'package:quran_app/home/domain/entity/all_surah_entity.dart';
import 'package:quran_app/home/domain/entity/ayah_translate_entity.dart';
import 'package:quran_app/home/domain/entity/surah_details_entity.dart';
import 'package:quran_app/home/domain/usecase/get_ayah_translate_usecase.dart';
import 'package:quran_app/home/domain/usecase/get_surahDetails_usecase.dart';
import 'package:quran_app/home/domain/usecase/get_surah_usecase.dart';

class HomeProvider extends ChangeNotifier {
  final allSurahUseCase = getIt<GetSurahUsecase>();
  final surahDetailsUsecse = getIt<GetSurahdetailsUsecase>();
  final ayahTranslateusecase = getIt<GetAyahTranslateUsecase>();

  bool isloading = false;
  AllSurahEntity? allSurah = AllSurahEntity();
  SurahDetailEntity? allSurahDetails = SurahDetailEntity();
  AyahTranslateEntity? allAyahsTranslate = AyahTranslateEntity();
  String? message;

  List<dynamic>? filteredSurah;

  Future<void> getSurah() async {
    isloading = true;
    notifyListeners();
    final result = await allSurahUseCase.callForSurah();
    result.fold((l) => message = l, (r) {
      allSurah = r;
      filteredSurah = r.data;
    });
    isloading = false;
    notifyListeners();
  }

  Future<void> getSurahDetails({required int surahId}) async {
    // log("GEt surahdetail call");
    isloading = true;
    notifyListeners();
    final result =
        await surahDetailsUsecse.callForSurahDetails(surahId: surahId);
    result.fold(
      (l) => message = l,
      (r) => allSurahDetails = r,
    );
    // log(allSurahDetails!.data.toString());
    isloading = false;
    notifyListeners();
  }

// oyat tarjimasi un
  Future<void> getAyahsTranslate() async {
    log("GEt ayahs call");
    isloading = true;
    notifyListeners();
    final result = await ayahTranslateusecase.callForAyahs();
    result.fold(
      (l) => message = l,
      (r) => allAyahsTranslate = r,
    );
    log("${allAyahsTranslate!.data.toString()} result");
    isloading = false;
    notifyListeners();
  }

//search un funk
  void searchSurah(String query) {
    if (query.isEmpty) {
      filteredSurah = allSurah?.data;
    } else {
      filteredSurah = allSurah?.data?.where(
        (surah) {
          return surah.englishName!.toLowerCase().contains(query.toLowerCase());
        },
      ).toList();
    }
    notifyListeners();
  }
}
