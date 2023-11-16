import 'package:flutter/material.dart';
import 'package:jobs/utils/job_card.dart';
import 'package:jobs/utils/recent_job_cards.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List jobsForYou = [
    ['Uber', 'UI Designer', 'lib/images/uber.png', '45'],
    ['Google', 'Producr Dev', 'lib/images/google.png', '80'],
    ['Apple', 'Software Eng.', 'lib/images/apple.png', '95'],
  ];
  final List recentForYou = [
    ['Nike', 'Web Designer', 'lib/images/nike.png', '35'],
    ['Google', 'Producr Dev', 'lib/images/google.png', '75'],
    ['Apple', 'Software Eng.', 'lib/images/apple.png', '85'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(38, 255, 255, 255)),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                "lib/images/menu.png",
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          color: const Color.fromARGB(54, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 30,
                              child: Image.asset(
                                "lib/images/search.png",
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search for a job'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'lib/images/options.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: recentForYou.length,
                itemBuilder: (context, index) {
                  return RecentJobCards(
                    companyName: recentForYou[index][0],
                    jobTitle: recentForYou[index][1],
                    logoImagePath: recentForYou[index][2],
                    hourlyRate: recentForYou[index][3],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
