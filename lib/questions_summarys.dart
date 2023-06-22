import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 150, 198, 241),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 22, 2, 56),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              data['question'].toString(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['user_answer'].toString(),
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.purple[200]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['correct_answer'].toString(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
