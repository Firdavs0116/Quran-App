import 'package:dartz/dartz.dart';
import 'package:quran_app/home/domain/entity/all_surah_entity.dart';
import 'package:quran_app/home/domain/entity/ayah_translate_entity.dart';
import 'package:quran_app/home/domain/entity/surah_details_entity.dart';

abstract class HomeRepo {
  Future<Either<dynamic, AllSurahEntity>> getSurah();
  Future<Either<dynamic, SurahDetailEntity>> getSurahDetails({required int surahId});
  Future<Either<dynamic, AyahTranslateEntity>> getAyahs( ); 
}
