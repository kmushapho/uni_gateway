import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../data/aptitude_categories.dart';
import '../models/aptitudeQuestions.dart';
import 'aptitude_test_screen.dart';
import '../data/aptitude_seed.dart';
import '../../main.dart';

class CategoryIntroScreen extends StatefulWidget {
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
  State<CategoryIntroScreen> createState() => _CategoryIntroScreenState();
}

class _CategoryIntroScreenState extends State<CategoryIntroScreen> {
  bool _isPreparing = false;
  String? _errorMessage;

  Future<void> _startTest() async {
    setState(() {
      _isPreparing = true;
      _errorMessage = null;
    });

    try {
      final box = Hive.box<Question>('aptitudeQuestions');

      // Seed only once
      if (box.isEmpty) {
        await addQuestionsIfEmpty();
      }

      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => AptitudeTestScreen(
            category: widget.category,
            currentIndex: widget.currentIndex,
            totalCategories: widget.totalCategories,
          ),
        ),
      );
    } catch (e, stack) {
      print('Error preparing quiz: $e\n$stack');
      setState(() {
        _errorMessage = 'Failed to load questions: $e';
      });
    } finally {
      if (mounted) {
        setState(() => _isPreparing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('Category ${widget.currentIndex + 1} of ${widget.totalCategories}'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: _isPreparing
            ? const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 24),
              Text(
                'Preparing your questions...\nThis only happens once.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        )
            : SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Category icon
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: isDark ? Colors.teal[900] : Colors.teal[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  _getCategoryIcon(widget.category.name),
                  size: 64,
                  color: isDark ? Colors.teal[300] : Colors.teal[800],
                ),
              ),
              const SizedBox(height: 32),

              // Main title
              Text(
                widget.category.title,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // Definition
              Text(
                widget.category.definition,
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.5,
                  color: theme.textTheme.bodyLarge?.color?.withOpacity(0.9),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // What to expect tip
              Card(
                elevation: 2,
                color: isDark ? Colors.grey[850] : Colors.blueGrey[50],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: theme.colorScheme.secondary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'You’ll get 6 questions (easy, medium, hard).',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 48),

              // Start button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.play_arrow_rounded, size: 28),
                  label: const Text(
                    'Start Questions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 6,
                  ),
                  onPressed: _isPreparing ? null : _startTest,
                ),
              ),

              if (_errorMessage != null) ...[
                const SizedBox(height: 24),
                Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.redAccent),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  // icons per category
  IconData _getCategoryIcon(String categoryName) {
    final name = categoryName.toLowerCase();
    if (name.contains('logical')) return Icons.psychology;
    if (name.contains('verbal')) return Icons.chat_bubble_outline;
    if (name.contains('numerical')) return Icons.calculate;
    if (name.contains('spatial')) return Icons.grid_view;
    if (name.contains('technical')) return Icons.build;
    if (name.contains('interpersonal')) return Icons.people_alt;
    if (name.contains('creative')) return Icons.brush;
    if (name.contains('physical')) return Icons.fitness_center;
    return Icons.category;
  }
}