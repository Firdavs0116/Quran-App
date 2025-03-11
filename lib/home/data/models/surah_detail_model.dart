import 'package:json_annotation/json_annotation.dart';

part 'surah_detail_model.g.dart';

@JsonSerializable()
class SurahDetailModel {
    @JsonKey(name: "code")
    final int? code;
    @JsonKey(name: "status")
    final String? status;
    @JsonKey(name: "data")
    final SurahModelData? data;

    SurahDetailModel({
        this.code,
        this.status,
        this.data,
    });

    factory SurahDetailModel.fromJson(Map<String, dynamic> json) => _$SurahDetailModelFromJson(json);

    Map<String, dynamic> toJson() => _$SurahDetailModelToJson(this);
}

@JsonSerializable()
class SurahModelData {
    @JsonKey(name: "number")
    final int? number;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "englishName")
    final String? englishName;
    @JsonKey(name: "englishNameTranslation")
    final String? englishNameTranslation;
    @JsonKey(name: "revelationType")
    final String? revelationType;
    @JsonKey(name: "numberOfAyahs")
    final int? numberOfAyahs;
    @JsonKey(name: "ayahs")
    final List<AyahModel>? ayahs;
    @JsonKey(name: "edition")
    final EditionModel? edition;

    SurahModelData({
        this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.revelationType,
        this.numberOfAyahs,
        this.ayahs,
        this.edition,
    });

    factory SurahModelData.fromJson(Map<String, dynamic> json) => _$SurahModelDataFromJson(json);

    Map<String, dynamic> toJson() => _$SurahModelDataToJson(this);
}

@JsonSerializable()
class AyahModel {
    @JsonKey(name: "number")
    final int? number;
    @JsonKey(name: "audio")
    final String? audio;
    @JsonKey(name: "audioSecondary")
    final List<String>? audioSecondary;
    @JsonKey(name: "text")
    final String? text;
    @JsonKey(name: "numberInSurah")
    final int? numberInSurah;
    @JsonKey(name: "juz")
    final int? juz;
    @JsonKey(name: "manzil")
    final int? manzil;
    @JsonKey(name: "page")
    final int? page;
    @JsonKey(name: "ruku")
    final int? ruku;
    @JsonKey(name: "hizbQuarter")
    final int? hizbQuarter;
    @JsonKey(name: "sajda")
    final bool? sajda;

    AyahModel({
        this.number,
        this.audio,
        this.audioSecondary,
        this.text,
        this.numberInSurah,
        this.juz,
        this.manzil,
        this.page,
        this.ruku,
        this.hizbQuarter,
        this.sajda,
    });

    factory AyahModel.fromJson(Map<String, dynamic> json) => _$AyahModelFromJson(json);

    Map<String, dynamic> toJson() => _$AyahModelToJson(this);
}

@JsonSerializable()
class EditionModel {
    @JsonKey(name: "identifier")
    final String? identifier;
    @JsonKey(name: "language")
    final String? language;
    @JsonKey(name: "name")
    final String? name;
    @JsonKey(name: "englishName")
    final String? englishName;
    @JsonKey(name: "format")
    final String? format;
    @JsonKey(name: "type")
    final String? type;
    @JsonKey(name: "direction")
    final dynamic direction;

    EditionModel({
        this.identifier,
        this.language,
        this.name,
        this.englishName,
        this.format,
        this.type,
        this.direction,
    });

    factory EditionModel.fromJson(Map<String, dynamic> json) => _$EditionModelFromJson(json);

    Map<String, dynamic> toJson() => _$EditionModelToJson(this);
}