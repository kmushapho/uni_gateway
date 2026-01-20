import 'package:flutter/material.dart';
import '../data/aptitude_categories.dart';
import 'aptitude_test_screen.dart';

class CategoryIntroScreen extends StatelessWidget {
  final CategoryInfo category;
  final int currentIndex;
  final int totalCategories;

  const CategoryIntroScreen({
    super.key,
    required this.category,
    required this.currentIndex,
    required this.totalCategories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category ${currentIndex + 1}/$totalCategories'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              category.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              category.definition,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            ElevatedButton.icon(
              icon: const Icon(Icons.play_arrow),
              label: const Text('Start Questions'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AptitudeTestScreen(
                      category: category,
                      currentIndex: currentIndex,
                      totalCategories: totalCategories,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}