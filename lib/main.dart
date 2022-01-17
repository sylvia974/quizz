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
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Voici le texte de la question',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.5,
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
                      onPressed: null,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text('Vrai',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 20
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
                      child: Text('Faux',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 20
                          ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
