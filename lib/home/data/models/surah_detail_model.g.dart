// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurahDetailModel _$SurahDetailModelFromJson(Map<String, dynamic> json) =>
    SurahDetailModel(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : SurahModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SurahDetailModelToJson(SurahDetailModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

SurahModelData _$SurahModelDataFromJson(Map<String, dynamic> json) =>
    SurahModelData(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      englishNameTranslation: json['englishNameTranslation'] as String?,
      revelationType: json['revelationType'] as String?,
      numberOfAyahs: (json['numberOfAyahs'] as num?)?.toInt(),
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => AyahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      edition: json['edition'] == null
          ? null
          : EditionModel.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SurahModelDataToJson(SurahModelData instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs,
      'edition': instance.edition,
    };

AyahModel _$AyahModelFromJson(Map<String, dynamic> json) => AyahModel(
      number: (json['number'] as num?)?.toInt(),
      audio: json['audio'] as String?,
      audioSecondary: (json['audioSecondary'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      text: json['text'] as String?,
      numberInSurah: (json['numberInSurah'] as num?)?.toInt(),
      juz: (json['juz'] as num?)?.toInt(),
      manzil: (json['manzil'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      ruku: (json['ruku'] as num?)?.toInt(),
      hizbQuarter: (json['hizbQuarter'] as num?)?.toInt(),
      sajda: json['sajda'] as bool?,
    );

Map<String, dynamic> _$AyahModelToJson(AyahModel instance) => <String, dynamic>{
      'number': instance.number,
      'audio': instance.audio,
      'audioSecondary': instance.audioSecondary,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

EditionModel _$EditionModelFromJson(Map<String, dynamic> json) => EditionModel(
      identifier: json['identifier'] as String?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      format: json['format'] as String?,
      type: json['type'] as String?,
      direction: json['direction'],
    );

Map<String, dynamic> _$EditionModelToJson(EditionModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
      'direction': instance.direction,
    };
