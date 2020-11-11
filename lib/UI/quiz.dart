import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.questionBank[questionNo].questionAnswer;
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }
      setState(() {
        questionNo++;
      });
    });
  }

  int questionNo = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionBank[questionNo].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if (questionNo == 12) {
                  return showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('You came to the end of the Quiz :) '),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('Your Answers are corrected!'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          RaisedButton(
                            child: Text('OK'),
                            onPressed: () {
                              return showDialog<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Your Score is 6 out of 15'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text('Congratulations !'),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      RaisedButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).pop();
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
