import 'package:flutter/material.dart';

void main() {
  runApp(const DashboardApp());
}

// Root widget
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

// Home screen
class PathBloomHome extends StatelessWidget {
  const PathBloomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              clipBehavior: Clip.none, // for overflow
              children: [

                // ===== top box =====
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.teal],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),

                  // app bar
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
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Your future starts here 🌱',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      // Settings icon
                      IconButton(
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                // ===== info card =====
                Positioned(
                  bottom: -60,
                  left: 30,
                  right: 30,

                  child: Card(
                    elevation: 6, // added shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Colors.green,
                          width: 1,
                        )
                    ),

                    child: const ListTile(
                      leading: Icon(Icons.wifi_off, color: Colors.green),
                      title: Text('This app works fully offline!'),
                      subtitle: Text(
                        'No data needed. Everything is saved on your phone.',
                        style: TextStyle(
                          color: Colors.teal,),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // ===== SPACE BELOW STACK =====
            const SizedBox(height: 60),

            // (More content goes here later)
          ],
        ),
      ),
    );
  }
}
