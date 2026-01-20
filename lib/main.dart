import 'package:flutter/material.dart';

void main() {
  runApp(const DashboardApp());
}

class DashboardApp extends StatefulWidget {
  const DashboardApp({super.key});

  @override
  State<DashboardApp> createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: _themeMode,
      home: PathBloomHome(onToggleTheme: _toggleTheme),
    );
  }
}

class PathBloomHome extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const PathBloomHome({
    super.key,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? Colors.grey[900] : Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Header + overlapping card
              Stack(
                clipBehavior: Clip.none,
                children: [

                  // Gradient header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(24, 50, 24, 100),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: isDark
                            ? [Colors.blueGrey[800]!, Colors.teal[900]!]
                            : [Colors.blue, Colors.teal],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28),
                      ),
                    ),
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
                                fontSize: 28,
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
                          icon: Icon(
                            isDark ? Icons.light_mode : Icons.dark_mode,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: onToggleTheme,
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
                        side: BorderSide(
                          color: isDark ? Colors.teal[300]! : Colors.green,
                          width: 1.5,
                        ),
                      ),
                      color: isDark ? Colors.grey[850] : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.wifi_off,
                            color: isDark ? Colors.teal[300] : Colors.green,
                            size: 40,
                          ),
                          title: Text(
                            'This app works fully offline!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isDark ? Colors.white : Colors.black87,
                            ),
                          ),
                          subtitle: Text(
                            'No data needed. Everything is saved on your phone.',
                            style: TextStyle(
                              color: isDark ? Colors.teal[200] : Colors.teal[800],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 70),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Choose what you need help with',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.88,
                  children: [
                    _buildOptionCard(
                      context,
                      'Aptitude Test',
                      'Discover your strengths',
                      Colors.purple[700]!,
                      Icons.psychology_outlined,
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
                      'Study materials',
                      Colors.orange[700]!,
                      Icons.menu_book_outlined,
                    ),
                    _buildOptionCard(
                      context,
                      'Practice Subjects',
                      'Gamified quizzes',
                      Colors.green[700]!,
                      Icons.library_books_outlined,
                    ),
                    _buildOptionCard(
                      context,
                      'Universities & TVETs',
                      'Courses & pathways',
                      Colors.red[700]!,
                      Icons.school_outlined,
                    ),
                    _buildOptionCard(
                      context,
                      'Bursaries & NSFAS',
                      'Funding information',
                      Colors.teal[700]!,
                      Icons.attach_money_outlined,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
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
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
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