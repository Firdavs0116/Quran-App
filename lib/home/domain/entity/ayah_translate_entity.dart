class AyahTranslateEntity {
    final int? code;
    final String? status;
    final DataEntity? data;

    AyahTranslateEntity({
        this.code,
        this.status,
        this.data,
    });

}

class DataEntity {
    final List<SurahEntity>? surahs;
    final EditionEntity? edition;

    DataEntity({
        this.surahs,
        this.edition,
    });

}

class EditionEntity {
    final String? identifier;
    final String? language;
    final String? name;
    final String? englishName;
    final String? format;
    final String? type;

    EditionEntity({
        this.identifier,
        this.language,
        this.name,
        this.englishName,
        this.format,
        this.type,
    });

}

class SurahEntity {
    final int? number;
    final String? name;
    final String? englishName;
    final String? englishNameTranslation;
    final String? revelationType;
    final List<AyahEntity>? ayahs;

    SurahEntity({
        this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.revelationType,
        this.ayahs,
    });

}

class AyahEntity {
    final int? number;
    final String? text;
    final int? numberInSurah;
    final int? juz;
    final int? manzil;
    final int? page;
    final int? ruku;
    final int? hizbQuarter;
    final dynamic sajda;

    AyahEntity({
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

}

class SajdaClassEntity {
    final int? id;
    final bool? recommended;
    final bool? obligatory;

    SajdaClassEntity({
        this.id,
        this.recommended,
        this.obligatory,
    });

}
