
import 'package:quran_app/home/data/models/surah_detail_model.dart';
import 'package:quran_app/home/domain/entity/surah_details_entity.dart';

class SurahDetailsMapper {
  static SurahDetailEntity mapSurahDetails(SurahDetailModel? model) {
    return SurahDetailEntity(
        code: model?.code, data: model?.data != null ? mapSurahData(model?.data):null, status: model?.status,);
  }

  static SurahDataEntity mapSurahData(SurahModelData? model) {
    return SurahDataEntity(
        ayahs: model?.ayahs?.map((ayah) => mapAyahEntity(ayah)).toList(),
        edition: model?.edition != null ?mapEditionEntity(model?.edition):null,
        englishName: model?.englishName,
        englishNameTranslation: model?.englishNameTranslation,
        name: model?.name,
        number: model?.number,
        numberOfAyahs: model?.numberOfAyahs,
        revelationType: model?.revelationType);
  }

  static AyahEntity mapAyahEntity(AyahModel? model) {
    return AyahEntity(
        audio: model?.audio,
        audioSecondary: model?.audioSecondary,
        hizbQuarter: model?.hizbQuarter,
        juz: model?.juz,
        manzil: model?.manzil,
        number: model?.number,
        numberInSurah: model?.numberInSurah,
        page: model?.page,
        ruku: model?.ruku,
        sajda: model?.sajda,
        text: model?.text);
  }

  static EditionEntity mapEditionEntity(EditionModel? model) {
    return EditionEntity(
        direction: model?.direction,
        englishName: model?.englishName,
        format: model?.format,
        identifier: model?.identifier,
        language: model?.language,
        name: model?.name,
        type: model?.type);
  }

}
