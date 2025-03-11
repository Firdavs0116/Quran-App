class SurahDetailEntity {
    final int? code;
    final String? status;
    final SurahDataEntity? data;

    SurahDetailEntity({
        this.code,
        this.status,
        this.data,
    });

}

class SurahDataEntity {
    final int? number;
    final String? name;
    final String? englishName;
    final String? englishNameTranslation;
    final String? revelationType;
    final int? numberOfAyahs;
    final List<AyahEntity>? ayahs;
    final EditionEntity? edition;

    SurahDataEntity({
        this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.revelationType,
        this.numberOfAyahs,
        this.ayahs,
        this.edition,
    });

}

class AyahEntity {
    final int? number;
    final String? audio;
    final List<String>? audioSecondary;
    final String? text;
    final int? numberInSurah;
    final int? juz;
    final int? manzil;
    final int? page;
    final int? ruku;
    final int? hizbQuarter;
    final bool? sajda;

    AyahEntity({
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

}

class EditionEntity {
    final String? identifier;
    final String? language;
    final String? name;
    final String? englishName;
    final String? format;
    final String? type;
    final dynamic direction;

    EditionEntity({
        this.identifier,
        this.language,
        this.name,
        this.englishName,
        this.format,
        this.type,
        this.direction,
    });

}
