import 'package:dartz/dartz.dart';
import 'package:quran_app/home/domain/entity/all_surah_entity.dart';
import 'package:quran_app/home/domain/repository/home_repo.dart';

class GetSurahUsecase {
  final HomeRepo homeRepo;
  GetSurahUsecase({required this.homeRepo});

  Future<Either<dynamic, AllSurahEntity>> callForSurah() async {
    return await homeRepo.getSurah();
  }
}
