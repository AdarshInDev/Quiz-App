import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // const AnswerButton(this.answerText,this.onTap,{super.key});//positional arguments
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  /*see we added required for named arguments now these
   arguments should be called differently too we will 
   call them using constructor AnswerButton(answerText:'something...',onTap:(){})*/
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 19, 3, 92),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
