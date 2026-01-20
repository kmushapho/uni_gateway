import 'package:hive/hive.dart';
import '../models/aptitudeQuestions.dart';
import 'aptitude_categories.dart';

Future<void> addQuestionsIfEmpty() async {
  final box = Hive.box<Question>('aptitudeQuestions');

  if (box.isNotEmpty) return;

  // Seed ALL categories
  for (final cat in allCategories) {
    final questions = getQuestionsForCategory(cat.name);
    await box.addAll(questions);
  }

  print('Seeded ${box.length} aptitude questions into Hive');
}