import 'dart:math';
import 'package:hive/hive.dart';
import '../models/aptitudeQuestions.dart';

class QuizService {
  static Future<List<Question>> getRandomQuestions({
    required String category,
  }) async {
    var box = Hive.box<Question>('aptitudeQuestions');
    if (box.isEmpty) return [];

    final all = box.values.where((q) => q.category == category).toList();

    if (all.length < 6) {
      // just shuffle and take what we have
      all.shuffle(Random());
      return all;
    }

    final easy   = all.where((q) => q.difficulty == 'easy')  .toList()..shuffle(Random());
    final medium = all.where((q) => q.difficulty == 'medium').toList()..shuffle(Random());
    final hard   = all.where((q) => q.difficulty == 'hard')  .toList()..shuffle(Random());

    final selected = <Question>[];

    selected.addAll(easy.take(2));
    selected.addAll(medium.take(2));
    selected.addAll(hard.take(2));

    // fill with random extras
    if (selected.length < 6) {
      final remaining = all.where((q) => !selected.contains(q)).toList()..shuffle(Random());
      selected.addAll(remaining.take(6 - selected.length));
    }

    selected.shuffle(Random()); // final randomization of order

    return selected;
  }
}