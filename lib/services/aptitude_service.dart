import 'dart:math';
import 'package:hive/hive.dart';
import '../models/aptitudeQuestions.dart';

class QuizService {
  static Future<List<Question>> getRandomQuestions({
    required String category,
  }) async {
    var box = Hive.box<Question>('questions');
    if (box.isEmpty) return [];

    List<Question> categoryQuestions = box.values.where((q) => q.category == category).toList();

    List<Question> easy = categoryQuestions.where((q) => q.difficulty == 'easy').toList()..shuffle(Random());
    List<Question> medium = categoryQuestions.where((q) => q.difficulty == 'medium').toList()..shuffle(Random());
    List<Question> hard = categoryQuestions.where((q) => q.difficulty == 'hard').toList()..shuffle(Random());

    List<Question> selected = [];
    selected.addAll(easy.take(2));
    selected.addAll(medium.take(2));
    selected.addAll(hard.take(2));

    selected.shuffle(Random());

    return selected;
  }
}