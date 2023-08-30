import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    /// this widget returns a widget thats why its return type is Widget
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 400,
            color: const Color.fromARGB(177, 110, 180, 205),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Click To Enter Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              // onPressed: () {
              //   startQuiz();
              //   print('pressed on rmx2151!');
              // },
              onLongPress: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 102, 9, 112),
                backgroundColor: const Color.fromARGB(255, 10, 150, 231),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz!',
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
