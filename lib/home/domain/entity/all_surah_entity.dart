class AllSurahEntity {
    final int? code;
    final String? status;
    final List<AllSurahDataEntity
    >? data;

    AllSurahEntity({
        this.code,
        this.status,
        this.data,
    });

}

class AllSurahDataEntity
 {
    final int? number;
    final String? name;
    final String? englishName;
    final String? englishNameTranslation;
    final int? numberOfAyahs;
    final String? revelationType;

    AllSurahDataEntity
    ({
        this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.numberOfAyahs,
        this.revelationType,
    });

}
