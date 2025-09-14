import 'package:flutter/material.dart';

void main() {
  runApp(const PointCounter());  // لازم const هنا
}

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});   // ✅ أضفنا key هنا

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Point Counter',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Team A
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamAPoints += 1;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamAPoints += 2;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamAPoints += 3;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                // Divider
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    width: 10,
                  ),
                ),

                // Team B
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamBPoints += 1;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamBPoints += 2;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamBPoints += 3;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 50),

            // Reset Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 60),
                backgroundColor: Colors.pink,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: const Text(
                'Reset 🚀',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
