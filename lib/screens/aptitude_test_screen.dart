import 'package:flutter/material.dart';
import '../services/aptitude_service.dart';
import '../models/aptitudeQuestions.dart';
import '../data/aptitude_categories.dart';
import 'aptitude_category_intro_screen.dart';

class AptitudeTestScreen extends StatefulWidget {
  final CategoryInfo category;
  final int currentIndex;
  final int totalCategories;

  const AptitudeTestScreen({
    super.key,
    required this.category,
    required this.currentIndex,
    required this.totalCategories,
  });

  @override
  State<AptitudeTestScreen> createState() => _AptitudeTestScreenState();
}

class _AptitudeTestScreenState extends State<AptitudeTestScreen> {
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  int score = 0;

  // Per-question state
  int? selectedIndex;
  bool hasAnswered = false;

  // get explanation + feedback for certain categories
  final Set<String> categoriesWithFeedback = {
    'logical',
    'verbal',
    'numerical',
    'spatial',
    'technical',
    'interpersonal',
  };

  // should show explanation for this category
  bool get shouldShowFeedback => categoriesWithFeedback.contains(widget.category.name.toLowerCase());

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  // random questions for this category
  Future<void> _loadQuestions() async {
    questions = await QuizService.getRandomQuestions(category: widget.category.name);
    setState(() {});
  }

  // prevent multiple selections when user has answered
  void _selectAnswer(int index) {
    if (hasAnswered) return;

    setState(() {
      selectedIndex = index;
      hasAnswered = true;

      if (index == questions[currentQuestionIndex].correctOptionIndex) {
        score++;
      }
    });
  }

  // Called when user presses Next
  void _goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        selectedIndex = null;
        hasAnswered = false;
      } else {

        // finishd this category
        if (widget.currentIndex < widget.totalCategories - 1) {
          // to next category intro
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => CategoryIntroScreen(
                category: allCategories[widget.currentIndex + 1],
                currentIndex: widget.currentIndex + 1,
                totalCategories: widget.totalCategories,
              ),
            ),
          );
        } else {
          // Last category completed, show completion dialog
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => AlertDialog(
              title: const Text('Test Complete!'),
              content: Text(
                'You finished all categories!\n'
                    'Score this category: $score / ${questions.length}\n'
                    '(Total across all categories can be tracked later)',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context); // Back to home
                  },
                  child: const Text('Back to Home'),
                ),
              ],
            ),
          );
        }
      }
    });
  }


  // Get color for answer buttons based on correctness
  Color _getButtonColor(int index) {
    if (!hasAnswered) return Theme.of(context).elevatedButtonTheme.style?.backgroundColor?.resolve({}) ?? Colors.blue;

    final correct = questions[currentQuestionIndex].correctOptionIndex;
    if (index == correct) return Colors.green[700]!;
    if (index == selectedIndex) return Colors.red[700]!;
    return Colors.grey[600]!;
  }


  @override
  Widget build(BuildContext context) {
    // Show loading spinner while questions are being fetched
    if (questions.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final q = questions[currentQuestionIndex];
    final bool isLastQuestion = currentQuestionIndex == questions.length - 1;

    return Scaffold(
      // App bar shows category title + question progress
    appBar: AppBar(
        title: Text('${widget.category.title} – ${currentQuestionIndex + 1}/${questions.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question text
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  q.questionText,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Options
            ...List.generate(q.options.length, (i) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: hasAnswered ? null : () => _selectAnswer(i),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _getButtonColor(i),
                    foregroundColor: Colors.white,
                    disabledBackgroundColor: _getButtonColor(i),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(q.options[i]),
                ),
              );
            }),

            const SizedBox(height: 24),

            // Explanation
            if (hasAnswered && shouldShowFeedback && q.explanation != null && q.explanation!.isNotEmpty)
              Card(
                color: selectedIndex == q.correctOptionIndex ? Colors.green[50] : Colors.red[50],
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedIndex == q.correctOptionIndex ? "Correct!" : "Incorrect",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == q.correctOptionIndex ? Colors.green[900] : Colors.red[900],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        q.explanation!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            const Spacer(),

            // Next button (only visible after answering)
            if (hasAnswered)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_forward),
                  label: Text(isLastQuestion ? "Finish Category" : "Next Question"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _goToNextQuestion,
                ),
              ),
          ],
        ),
      ),
    );
  }
}