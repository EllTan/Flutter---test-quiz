import 'package:flutter/material.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/widgets/answer.dart';
import 'package:quiz/widgets/progress_bar.dart';
import 'package:quiz/widgets/quez.dart';
import 'package:quiz/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionsData data = QuestionsData();
  int _countResult = 0;
  int _questionIndex = 0;
  List<Icon> _icons = [];

  void _clearState() {
    return setState(() {
      _countResult = 0;
      _questionIndex = 0;
      _icons = [];
    });
  }

  void _changeAnsver(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(
            Icons.add_circle,
            color: Colors.greenAccent,
          ));
          _countResult++;
        } else {
          _icons.add(Icon(
            Icons.add_circle,
            color: Colors.redAccent,
          ));
        }
        _questionIndex++;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Soccer quiz'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 60.0),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/img1.jpeg' // в pubspec.yaml указываем путь к картинкам
                  ),
              fit: BoxFit.cover, // маштабируем картинку
            ),
          ),
          child: Column(
            children: [
              ProgressBar(
                icons: _icons,
                count: _questionIndex,
                total: data.questions.length,
              ),
              _questionIndex < data.questions.length ?
              Quiz(
                quizdata: data,
                index: _questionIndex,
                changeAnsver: _changeAnsver,
              ): Result(
                count: _countResult,
                total: data.questions.length,
                clear: _clearState,
              ),
            ],
          ),
        )
    );
  }
}
