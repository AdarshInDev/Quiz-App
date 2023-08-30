// import 'package:flutter/material.dart';

// class QuestionSummary extends StatelessWidget {
//   const QuestionSummary({super.key, required this.summaryData});

import 'package:adv_basics/questions_summary/summary_item.dart';
//   final List<Map<String, Object>> summaryData;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: SingleChildScrollView(
//         child: Column(
//           children: summaryData.map(
//             (data) {
//               return Row(
//                 children: [
//                   Text(
//                     ((data['question_index'] as int) + 1).toString(),
//                     style: const TextStyle(
//                       fontSize: 25,
//                       backgroundColor: Color.fromARGB(255, 69, 236, 18),
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Text(data['question'].toString(),
//                             style: const TextStyle(
//                                 color: Colors.white, fontSize: 18)),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           data['chosenAnswer'].toString(),
//                           style: const TextStyle(
//                               color: Color.fromARGB(255, 222, 183, 42),
//                               fontFamily: 'sans-serif',
//                               fontSize: 16),
//                         ),
//                         Text(
//                           data['correctAnswer'].toString(),
//                           style: const TextStyle(
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 133, 176, 251)),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               );
//             },
//           ).toList(),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
