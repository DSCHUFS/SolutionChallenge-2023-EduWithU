import 'package:flutter/material.dart';

class ResultElectricScreen extends StatelessWidget {
  const ResultElectricScreen({
    Key? key,
    required this.totalScore,
    required this.resetQuiz,
  }) : super(key: key);

  final int totalScore;
  final Function resetQuiz;

  @override
  Widget build(BuildContext context) {
    String resultMessage;

    if (totalScore <= 1) {
      resultMessage = 'bad';
    } else if (totalScore <= 2) {
      resultMessage = 'normal';
    } else {
      resultMessage = 'good';
    }

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Text(resultMessage),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () => resetQuiz(),
            child: Text("reset quiz"),
          ),
        ],
      ),
    );
  }
}
