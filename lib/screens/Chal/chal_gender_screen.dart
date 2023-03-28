import 'package:eduwithu/Data/question_list.dart';
import 'package:eduwithu/screens/Quiz/quiz_gender_screen.dart';
import 'package:eduwithu/screens/Result/result_gender_screen.dart';
import 'package:flutter/material.dart';

class ChalGenderScreen extends StatefulWidget {
  const ChalGenderScreen({Key? key}) : super(key: key);

  @override
  State<ChalGenderScreen> createState() => _ChalGenderScreenState();
}

class _ChalGenderScreenState extends State<ChalGenderScreen> {
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
          'Gender',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
      body: (questionIndex < genderQuestionList.length)
          ? QuizGenderScreen(
              answerPressed: answerPressed,
              questionIndex: questionIndex,
            )
          : ResultGenderScreen(
              totalScore: totalScore,
              resetQuiz: resetQuiz,
            ),
    );
  }
}
