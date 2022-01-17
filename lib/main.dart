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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'Voici le texte de la question',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text('Vrai'),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  child: Text('Faux'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
