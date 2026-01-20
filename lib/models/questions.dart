import 'package:hive/hive.dart';

part 'questions.g.dart';

@HiveType(typeId: 1)
class Question {
  @HiveField(0)
  String id;

  @HiveField(1)
  String category;

  @HiveField(2)
  String questionText;

  @HiveField(3)
  List<String> options;

  @HiveField(4)
  int correctOptionIndex;

  @HiveField(5)
  String difficulty;

  @HiveField(6)
  String? explanation;

  Question({
    required this.id,
    required this.category,
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
    required this.difficulty,
    this.explanation,
  });
}