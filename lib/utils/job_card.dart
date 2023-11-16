import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final String hourlyRate;
  const JobCard(
      {super.key,
      required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    child: Image.asset(logoImagePath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: const Color.fromARGB(255, 150, 146, 146),
                      child: const Text(
                        'Part time',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  jobTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: const Color.fromARGB(255, 98, 110, 99),
                  child: Text(
                    '\$' + hourlyRate.toString() + '/hr',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
