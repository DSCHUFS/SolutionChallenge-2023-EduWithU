import 'package:eduwithu/Data/question_list.dart';
import 'package:eduwithu/screens/Quiz/quiz_recycle_screen.dart';
import 'package:eduwithu/screens/Result/result_recycle_screen.dart';
import 'package:flutter/material.dart';

class ChalRecycleScreen extends StatefulWidget {
  const ChalRecycleScreen({Key? key}) : super(key: key);

  @override
  State<ChalRecycleScreen> createState() => _ChalRecycleScreenState();
}

class _ChalRecycleScreenState extends State<ChalRecycleScreen> {
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
          'Recycle',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
      body: (questionIndex < recycleQuestionList.length)
          ? QuizRecycleScreen(
              answerPressed: answerPressed,
              questionIndex: questionIndex,
            )
          : ResultRecycleScreen(
              totalScore: totalScore,
              resetQuiz: resetQuiz,
            ),
    );
  }
}
