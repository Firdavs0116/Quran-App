// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSurahModel _$AllSurahModelFromJson(Map<String, dynamic> json) =>
    AllSurahModel(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AllSurahModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllSurahModelToJson(AllSurahModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

AllSurahModelData _$AllSurahModelDataFromJson(Map<String, dynamic> json) =>
    AllSurahModelData(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      englishNameTranslation: json['englishNameTranslation'] as String?,
      numberOfAyahs: (json['numberOfAyahs'] as num?)?.toInt(),
      revelationType: json['revelationType'] as String?,
    );

Map<String, dynamic> _$AllSurahModelDataToJson(AllSurahModelData instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'numberOfAyahs': instance.numberOfAyahs,
      'revelationType': instance.revelationType,
    };
