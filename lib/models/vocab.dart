class Vocab {
  final String lessonId;
  final int count;
  final String word;
  final String pronounce;
  final String meaning;
  final List<String> sentence;

  const Vocab({
    required this.lessonId,
    required this.count,
    required this.word,
    required this.pronounce,
    required this.meaning,
    required this.sentence,
  });
}
