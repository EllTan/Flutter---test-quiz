class Questions {
  final String question;
  final List<Map> answers;

  Questions({required this.question, required this.answers});
// {} - именованные параметры, required - обязательные
}

class QuestionsData {
  final _data = [
    Questions(question: 'Вопрос 1', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 2', answers: [
      {'answers': 'Ответ 1'},
      {'answers': 'Ответ 2', 'isCorrect': 1},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 3', answers: [
      {'answers': 'Ответ 1'},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3', 'isCorrect': 1},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 4', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 5', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 6', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 7', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 8', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 9', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
    Questions(question: 'Вопрос 10', answers: [
      {'answers': 'Ответ 1', 'isCorrect': 1},
      {'answers': 'Ответ 2'},
      {'answers': 'Ответ 3'},
      {'answers': 'Ответ 4'},
    ]),
  ];

  List<Questions> get questions => [..._data];
}
