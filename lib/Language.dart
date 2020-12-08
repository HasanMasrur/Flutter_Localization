class Language {
  final String id;
  final String flag;
  final String name;
  final String contruecode;
  Language(this.id, this.flag, this.name, this.contruecode);

  static List<Language> languageList() {
    return <Language>[
      Language("1", "🇺🇸", "English", "en"),
      Language("2", "🇧🇩", "বাংলা", "bn"),
    ];
  }
}
