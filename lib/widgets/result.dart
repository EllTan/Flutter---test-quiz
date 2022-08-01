import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final Function clear;

  Result({Key? key, this.count, this.total, required this.clear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget image;

    if (0 <= count && count <= 3) {
      msg = 'Все плохо';
      image = Image.asset('assets/images/1-3result.jpeg');
    } else if (4 <= count && count <= 7) {
      msg = 'Норм';
      image = Image.asset('assets/images/4-7result.jpeg');
    } else {
      msg = 'Огонь';
      image = Image.asset('assets/images/8-10result.jpeg');
    }

    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
            colors:[
              Color(0xFF5337FF),
              Color(0xFF8131FF),
              Color(0xFFbd27FF),
            ]
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: image,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text('верно ответили на $count из $total вопросов'),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            child: Text('пройти еще раз'),
            onPressed: () => clear(),
          ),
        ],
      ),
    );
  }
}
