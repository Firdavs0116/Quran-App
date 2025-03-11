// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_translate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AyahTranslateModel _$AyahTranslateModelFromJson(Map<String, dynamic> json) =>
    AyahTranslateModel(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AyahTranslateModelToJson(AyahTranslateModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      surahs: (json['surahs'] as List<dynamic>?)
          ?.map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
      edition: json['edition'] == null
          ? null
          : Edition.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'surahs': instance.surahs,
      'edition': instance.edition,
    };

Edition _$EditionFromJson(Map<String, dynamic> json) => Edition(
      identifier: json['identifier'] as String?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      format: json['format'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$EditionToJson(Edition instance) => <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
    };

Surah _$SurahFromJson(Map<String, dynamic> json) => Surah(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      englishNameTranslation: json['englishNameTranslation'] as String?,
      revelationType: json['revelationType'] as String?,
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SurahToJson(Surah instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'ayahs': instance.ayahs,
    };

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah(
      number: (json['number'] as num?)?.toInt(),
      text: json['text'] as String?,
      numberInSurah: (json['numberInSurah'] as num?)?.toInt(),
      juz: (json['juz'] as num?)?.toInt(),
      manzil: (json['manzil'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      ruku: (json['ruku'] as num?)?.toInt(),
      hizbQuarter: (json['hizbQuarter'] as num?)?.toInt(),
      sajda: json['sajda'],
    );

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

SajdaClass _$SajdaClassFromJson(Map<String, dynamic> json) => SajdaClass(
      id: (json['id'] as num?)?.toInt(),
      recommended: json['recommended'] as bool?,
      obligatory: json['obligatory'] as bool?,
    );

Map<String, dynamic> _$SajdaClassToJson(SajdaClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recommended': instance.recommended,
      'obligatory': instance.obligatory,
    };
