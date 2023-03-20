import 'package:eduwithu/Data/question_list.dart';
import 'package:flutter/material.dart';

class QuizRecycleScreen extends StatelessWidget {
  const QuizRecycleScreen({
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
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFF94E1D4)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(recycleQuestionList[questionIndex]["questionText"]),
          ),
          const SizedBox(height: 150),
          ElevatedButton(
            onPressed: () => answerPressed(
                recycleQuestionList[questionIndex]["answers"][0]["score"]),
            child:
                Text(recycleQuestionList[questionIndex]["answers"][0]["text"]),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  } else {
                    return Colors.black;
                  }
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFFA3EDD7);
                  } else {
                    return Colors.white;
                  }
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(
                recycleQuestionList[questionIndex]["answers"][1]["score"]),
            child:
                Text(recycleQuestionList[questionIndex]["answers"][1]["text"]),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  } else {
                    return Colors.black;
                  }
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFFA3EDD7);
                  } else {
                    return Colors.white;
                  }
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(
                recycleQuestionList[questionIndex]["answers"][2]["score"]),
            child:
                Text(recycleQuestionList[questionIndex]["answers"][2]["text"]),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  } else {
                    return Colors.black;
                  }
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFFA3EDD7);
                  } else {
                    return Colors.white;
                  }
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(
                recycleQuestionList[questionIndex]["answers"][3]["score"]),
            child:
                Text(recycleQuestionList[questionIndex]["answers"][3]["text"]),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  } else {
                    return Colors.black;
                  }
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFFA3EDD7);
                  } else {
                    return Colors.white;
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
