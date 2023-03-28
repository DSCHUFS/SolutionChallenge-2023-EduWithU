import 'package:eduwithu/Data/question_list.dart';
import 'package:eduwithu/screens/Quiz/quiz_electric_screen.dart';
import 'package:eduwithu/screens/Result/result_electric_screen.dart';
import 'package:flutter/material.dart';

class ChalElectricScreen extends StatefulWidget {
  const ChalElectricScreen({Key? key}) : super(key: key);

  @override
  State<ChalElectricScreen> createState() => _ChalElectricScreenState();
}

class _ChalElectricScreenState extends State<ChalElectricScreen> {
  int questionIndex = 0;
  int totalScore = 0;

  void answerPressed(int score) {
    setState(() {
      questionIndex++;
    });
    totalScore += score;
    print(totalScore);
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
    totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Electric',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
      body: (questionIndex < electricQuestionList.length)
          ? QuizElectricScreen(
              answerPressed: answerPressed,
              questionIndex: questionIndex,
            )
          : ResultElectricScreen(
              totalScore: totalScore,
              resetQuiz: resetQuiz,
            ),
    );
  }
}
