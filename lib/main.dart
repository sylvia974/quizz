import 'package:flutter/material.dart';
import 'quizBrain.dart';

QuizBrain qb = QuizBrain();

void main() {
  runApp(const quizz());
}

class quizz extends StatefulWidget {
  const quizz({Key? key}) : super(key: key);

  @override
  _quizzState createState() => _quizzState();
}

class _quizzState extends State<quizz> {
  List<Icon> suiviscore = [];


checkAnswer(bool x){
  bool bonnereponse = qb.getQuestionReponse();
  setState(() {
    if (bonnereponse == x) {
      suiviscore
          .add(Icon(Icons.check, color: Colors.green));
    } else {
      suiviscore.add(Icon(Icons.close, color: Colors.red));
    }
    qb.nextQuestion();
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Center(
                    child: Text(
                      qb.getQuestionEnonce(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text(
                      "Vrai",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text(
                      "Faux",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: suiviscore,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
