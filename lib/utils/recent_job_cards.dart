import 'package:flutter/material.dart';

class RecentJobCards extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final String hourlyRate;
  const RecentJobCards(
      {super.key,
      required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Color.fromARGB(117, 255, 255, 255)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.all(5),
                          color: Colors.grey[300],
                          child: Image.asset(logoImagePath),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jobTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            companyName,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Color.fromARGB(255, 66, 177, 72),
                    child: Text(
                      ' \$' + hourlyRate.toString() + '/hr',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
