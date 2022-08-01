import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  Answer(
      {Key? key,
      required this.title,
      this.isCorrect,
      required this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.85,
      child: GestureDetector(
        onTap: () => onChangeAnswer(isCorrect),
        child: Container(
          margin: const EdgeInsets.symmetric(
            //внешние отступы
            horizontal: 50.0,
            vertical: 10.0,
          ),
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          // ширина, растянем до границ родителя
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  //тень
                  color: Colors.black,
                  blurRadius: 10.0,
                  offset: Offset(1.0, 1.0)),
              //скруглить края
            ],
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(colors: [
              Color(0xFF5337FF),
              Color(0xFF8131FF),
              Color(0xFFbd27FF),
            ]),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.00,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
