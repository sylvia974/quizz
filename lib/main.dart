import 'package:flutter/material.dart';

void main() {
  runApp(const quizz());
}

class quizz extends StatefulWidget {
  const quizz({Key? key}) : super(key: key);

  @override
  _quizzState createState() => _quizzState();
}

class _quizzState extends State<quizz> {

  List<Icon> suiviscore = [
  Icon(Icons.check,color:Colors.green),
  Icon(Icons.check,color:Colors.green),
  Icon(Icons.close,color:Colors.red),
  Icon(Icons.check,color:Colors.green),
  Icon(Icons.check,color:Colors.green),
];

List<String> questions = ["Question 1 ?","Question 2 ?","Question 3 ?"];
int questionNumber = 0;
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
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Center(
                    child: Text( questions[questionNumber],
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
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                      onPressed: () {
                      setState(() {
                        suiviscore.add(Icon(Icons.check,color:Colors.green));
                        questionNumber++;
                      });
                      },
                      child: Text("Vrai",
                      style: TextStyle(color:Colors.white,
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
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        suiviscore.add(Icon(Icons.close,color:Colors.red));
                        questionNumber++;
                      });
                    },

                    child: Text("Faux",
                      style: TextStyle(color:Colors.white,
                        fontSize: 25.0,
                      ),
                    ),

                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children:suiviscore,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
