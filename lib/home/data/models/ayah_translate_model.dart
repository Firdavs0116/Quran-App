import 'package:json_annotation/json_annotation.dart';

part 'ayah_translate_model.g.dart';

@JsonSerializable()
class AyahTranslateModel {
    @JsonKey(name: "code")
    final int? code;
    @JsonKey(name: "status")
    final String? status;
    @JsonKey(name: "data")
    final Data? data;

    AyahTranslateModel({
        this.code,
        this.status,
        this.data,
    });

    factory AyahTranslateModel.fromJson(Map<String, dynamic> json) => _$AyahTranslateModelFromJson(json);

    Map<String, dynamic> toJson() => _$AyahTranslateModelToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "surahs")
    final List<Surah>? surahs;
    @JsonKey(name: "edition")
    final Edition? edition;

    Data({
        this.surahs,
        this.edition,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Edition {
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

    Edition({
        this.identifier,
        this.language,
        this.name,
        this.englishName,
        this.format,
        this.type,
    });

    factory Edition.fromJson(Map<String, dynamic> json) => _$EditionFromJson(json);

    Map<String, dynamic> toJson() => _$EditionToJson(this);
}

@JsonSerializable()
class Surah {
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
    @JsonKey(name: "ayahs")
    final List<Ayah>? ayahs;

    Surah({
        this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.revelationType,
        this.ayahs,
    });

    factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);

    Map<String, dynamic> toJson() => _$SurahToJson(this);
}

@JsonSerializable()
class Ayah {
    @JsonKey(name: "number")
    final int? number;
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
    final dynamic sajda;

    Ayah({
        this.number,
        this.text,
        this.numberInSurah,
        this.juz,
        this.manzil,
        this.page,
        this.ruku,
        this.hizbQuarter,
        this.sajda,
    });

    factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);

    Map<String, dynamic> toJson() => _$AyahToJson(this);
}

@JsonSerializable()
class SajdaClass {
    @JsonKey(name: "id")
    final int? id;
    @JsonKey(name: "recommended")
    final bool? recommended;
    @JsonKey(name: "obligatory")
    final bool? obligatory;

    SajdaClass({
        this.id,
        this.recommended,
        this.obligatory,
    });

    factory SajdaClass.fromJson(Map<String, dynamic> json) => _$SajdaClassFromJson(json);

    Map<String, dynamic> toJson() => _$SajdaClassToJson(this);
}
