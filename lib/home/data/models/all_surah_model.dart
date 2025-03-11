import 'package:json_annotation/json_annotation.dart';

part 'all_surah_model.g.dart';

@JsonSerializable()
class AllSurahModel {
    @JsonKey(name: "code")
    final int? code;
    @JsonKey(name: "status")
    final String? status;
    @JsonKey(name: "data")
    final List<AllSurahModelData>? data;

    AllSurahModel({
        this.code,
        this.status,
        this.data,
    });

    factory AllSurahModel.fromJson(Map<String, dynamic> json) => _$AllSurahModelFromJson(json);

    Map<String, dynamic> toJson() => _$AllSurahModelToJson(this);
}

@JsonSerializable()
class AllSurahModelData {
    @JsonKey(name: "number")
    final int? number;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "englishName")
    final String? englishName;
    @JsonKey(name: "englishNameTranslation")
    final String? englishNameTranslation;
    @JsonKey(name: "numberOfAyahs")
    final int? numberOfAyahs;
    @JsonKey(name: "revelationType")
    final String? revelationType;

    AllSurahModelData({
        this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.numberOfAyahs,
        this.revelationType,
    });

    factory AllSurahModelData.fromJson(Map<String, dynamic> json) => _$AllSurahModelDataFromJson(json);

    Map<String, dynamic> toJson() => _$AllSurahModelDataToJson(this);
}