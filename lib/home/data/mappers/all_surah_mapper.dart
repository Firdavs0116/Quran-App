

import 'package:quran_app/home/data/models/all_surah_model.dart';
import 'package:quran_app/home/domain/entity/all_surah_entity.dart';

class AllSurahMapper {
  static AllSurahEntity mapSurahEntity(AllSurahModel? model) {
    return AllSurahEntity(
        code: model?.code,
        data: model?.data?.map((e) => mapSurahDataEntity(e)).toList(),
        status: model?.status);
  }

// all surah data
  static AllSurahDataEntity mapSurahDataEntity(AllSurahModelData? model) {
    return AllSurahDataEntity(
        englishName: model?.englishName,
        englishNameTranslation: model?.englishNameTranslation,
        name: model?.name,
        number: model?.number,
        numberOfAyahs: model?.numberOfAyahs,
        revelationType: model?.revelationType);
  }
}
