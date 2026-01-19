import 'package:flutter/material.dart';

void main() {
  runApp(const DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PathBloomHome(),
    );
  }
}

class PathBloomHome extends StatelessWidget {
  const PathBloomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Header + Overlapping Card
              Stack(
                clipBehavior: Clip.none,
                children: [

                  // gradient header container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(24, 50, 24, 100),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.teal],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28),
                      ),
                    ),

                    // header box row + settings button
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'PathBloom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Your future starts here 🌱',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () {
                            // TODO: Settings action
                          },
                        ),
                      ],
                    ),
                  ),

                  // Overlapping info card
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: -50,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Colors.green, width: 1.5),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.wifi_off,
                            color: Colors.green,
                            size: 40,
                          ),
                          title: Text(
                            'This app works fully offline!',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'No data needed. Everything is saved on your phone.',
                            style: TextStyle(color: Colors.teal),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Spacing after info card
              const SizedBox(height: 70),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const Text(
                  'Choose what you need help with',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Grid for options
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85,
                  children: [
                    _buildOptionCard(
                      context,
                      'Aptitude Test',
                      'Discover your strengths',
                      Colors.purple[700]!,
                      Icons.psychology,
                    ),
                    _buildOptionCard(
                      context,
                      'Upload Marks',
                      'Get course suggestions',
                      Colors.blue[700]!,
                      Icons.file_upload_outlined,
                    ),
                    _buildOptionCard(
                      context,
                      'Textbooks & Exams',
                      'Study materials offline',
                      Colors.orange[700]!,
                      Icons.library_books_outlined,
                    ),
                    _buildOptionCard(
                      context,
                      'Practice Subjects',
                      'Gamified quizzes',
                      Colors.green[700]!,
                      Icons.menu_book_outlined,
                    ),
                    _buildOptionCard(
                      context,
                      'More 1',
                      'Coming soon',
                      Colors.teal[700]!,
                      Icons.star,
                    ),
                    _buildOptionCard(
                      context,
                      'More 2',
                      'Coming soon',
                      Colors.red[700]!,
                      Icons.help,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40), // bottom padding
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard(
      BuildContext context,
      String title,
      String subtitle,
      Color color,
      IconData icon,
      ) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Opening $title...')),
        );
      },
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.white.withOpacity(0.25),
      child: Card(
        color: color,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 40),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}