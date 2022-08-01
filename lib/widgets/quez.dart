import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final quizdata;
  final index;
  final Function changeAnsver;

  Quiz({Key? key, this.quizdata, this.index, required this.changeAnsver}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          quizdata.questions[index].question,
          style: Theme.of(context)
              .textTheme
              .caption, // применяем стиль указанный глобально
        ),
      ),
      ...quizdata.questions[index].answers
          .map((value) => Answer(
        title: value['answers'],
        onChangeAnswer: changeAnsver,
        isCorrect: value.containsKey('isCorrect') ? true : false,
      ))
          .toList(),
    ],);
  }
}
