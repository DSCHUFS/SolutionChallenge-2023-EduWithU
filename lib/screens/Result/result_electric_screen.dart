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
          Text(
            resultMessage,
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Text(
            "\n맞힌 문제의 개수: " + totalScore.toString(),
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () => resetQuiz(),
            child: Text("reset quiz"),
            style: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              backgroundColor: MaterialStatePropertyAll(Color(0xFFA3EDD7)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "GO TO CHALLENGE",
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              backgroundColor: MaterialStatePropertyAll(Color(0xFFA3EDD7)),
            ),
          ),
        ],
      ),
    );
  }
}
