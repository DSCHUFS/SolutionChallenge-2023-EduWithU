import 'package:eduwithu/question_list.dart';
import 'package:flutter/material.dart';

class QuizElectricScreen extends StatelessWidget {
  const QuizElectricScreen({
    Key? key,
    required this.answerPressed,
    required this.questionIndex,
  }) : super(key: key);

  final Function answerPressed;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Text(questionList[questionIndex]["questionText"]),
          const SizedBox(height: 150),
          ElevatedButton(
            onPressed: () => answerPressed(
                questionList[questionIndex]["answers"][0]["score"]),
            child: Text(questionList[questionIndex]["answers"][0]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(
                questionList[questionIndex]["answers"][1]["score"]),
            child: Text(questionList[questionIndex]["answers"][1]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(
                questionList[questionIndex]["answers"][2]["score"]),
            child: Text(questionList[questionIndex]["answers"][2]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(
                questionList[questionIndex]["answers"][3]["score"]),
            child: Text(questionList[questionIndex]["answers"][3]["text"]),
          ),
        ],
      ),
    );
  }
}
