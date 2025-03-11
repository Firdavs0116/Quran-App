import 'package:dartz/dartz.dart';
import 'package:quran_app/home/domain/entity/surah_details_entity.dart';
import 'package:quran_app/home/domain/repository/home_repo.dart';

class GetSurahdetailsUsecase {
  final HomeRepo homeRepo;
  GetSurahdetailsUsecase({required this.homeRepo});
  Future<Either<dynamic,SurahDetailEntity>> callForSurahDetails({required int surahId })async{
    return await homeRepo.getSurahDetails(surahId: surahId);
  }
}
