import 'package:flutter/material.dart';

void main() {
  runApp(const DashboardApp());
}

// Root widget
class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PathBloomHome(),
      title: 'PathBloom',
    );
  }
}
// Dashboard screen
class PathBloomHome extends StatelessWidget {
  const PathBloomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

            // ===== TOP BOX =====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 30),                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.teal, Colors.green],
                  ),

                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
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
                          'PathBloom ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Your future starts here 🌱 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    // settings
                    IconButton(
                      icon: const Icon(Icons.settings,
                          color: Colors.white,
                          size: 30),
                      onPressed: () {
                        // Open settings here
                      },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  // ListTile gives icon + text layout
                  child: const ListTile(
                    leading: Icon(Icons.wifi_off, color: Colors.green),
                    title: Text('This app works fully offline!'),
                    subtitle: Text(
                      'No data needed. Everything is saved on your phone.',
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
    );
  }
}