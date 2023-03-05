import 'package:eduwithu/question_list.dart';
import 'package:flutter/material.dart';

class ChalElectricScreen extends StatelessWidget {
  const ChalElectricScreen({Key? key}) : super(key: key);

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
      body: Center(
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
              child: Text(questionList[0]["questionText"]),
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {},
              child: Text(questionList[0]["answers"][0]["text"]),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFF94E1D4);
                  } else {
                    return Colors.white;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(fontSize: 16);
                    } else {
                      return TextStyle(fontSize: 10);
                    }
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(questionList[0]["answers"][1]["text"]),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFF94E1D4);
                  } else {
                    return Colors.white;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(fontSize: 16);
                    } else {
                      return TextStyle(fontSize: 10);
                    }
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(questionList[0]["answers"][2]["text"]),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFF94E1D4);
                  } else {
                    return Colors.white;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(fontSize: 16);
                    } else {
                      return TextStyle(fontSize: 10);
                    }
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(questionList[0]["answers"][3]["text"]),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Color(0xFF94E1D4);
                  } else {
                    return Colors.white;
                  }
                }),
                textStyle: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(fontSize: 16);
                    } else {
                      return TextStyle(fontSize: 10);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
