
import 'package:quran_app/home/data/models/ayah_translate_model.dart';
import 'package:quran_app/home/domain/entity/ayah_translate_entity.dart';

class AllAyahMapper {
  static AyahTranslateEntity mapAyahEntity(AyahTranslateModel? model) {
    return AyahTranslateEntity(
      code: model?.code ?? 0, 
      status: model?.status ?? "",
      data: model?.data != null ? mapAyahsDataEntity(model!.data!) : null,
    );
  }

  static DataEntity mapAyahsDataEntity(Data? model) {
    return DataEntity(
      edition: model?.edition != null ? mapEditionEntity(model!.edition!) : null,
      surahs: model?.surahs?.map((surah) => mapSurahEntity(surah)).toList() ?? [],
    );
  }

  static EditionEntity mapEditionEntity(Edition? model) {
    return EditionEntity(
      identifier: model?.identifier ?? "",
      language: model?.language ?? "",
      name: model?.name ?? "",
      englishName: model?.englishName ?? "",
      format: model?.format ?? "",
      type: model?.type ?? "",
    );
  }

  static SurahEntity mapSurahEntity(Surah? model) {
    return SurahEntity(
      number: model?.number ?? 0,
      name: model?.name ?? "",
      englishName: model?.englishName ?? "",
      englishNameTranslation: model?.englishNameTranslation ?? "",
      revelationType: model?.revelationType ?? "",
      ayahs: model?.ayahs?.map((ayah) => mapAyahTREntity(ayah)).toList() ?? [],
    );
  }

  static AyahEntity mapAyahTREntity(Ayah? model) {
    return AyahEntity(
      number: model?.number ?? 0,
      text: model?.text ?? "",
    );
  }
}
