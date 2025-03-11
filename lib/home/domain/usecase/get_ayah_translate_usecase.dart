import 'package:dartz/dartz.dart';
import 'package:quran_app/home/domain/entity/ayah_translate_entity.dart';
import 'package:quran_app/home/domain/repository/home_repo.dart';

class GetAyahTranslateUsecase {
  final HomeRepo homeRepo;

  GetAyahTranslateUsecase({required this.homeRepo});

  Future<Either<dynamic, AyahTranslateEntity>> callForAyahs() async {
    return await homeRepo.getAyahs();
  }
}
