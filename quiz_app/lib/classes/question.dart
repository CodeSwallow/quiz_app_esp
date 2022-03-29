class Question {
  late String country;
  String question = "Capital de: ";
  late String answer;
  List<String> options = [];
  String selected = 'Skipped';
  bool correct = false;

  Question.fromJson(Map<String, dynamic> json)
      : country = json['country'],
        answer = json['capital'];

  void addOptions(List<String> newOptions) {
    question += country;
    options.add(answer);
    options.addAll(newOptions);
    options.shuffle();
  }
}
