/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/anonymousfunctions_scoresummarizer_base.dart';
/*
Consider the following list of student scores:

final scores = [88, 76, 90, 59, 93, 81, 74, 66];

Write an anonymous function using Dart's higher-order functions 
to calculate the average score of students who scored above 75.
*/

double Function(List<int> scores) averageHighScores = (scores) {
  if (scores.isEmpty) {
    return 0;
  }

  int counter = 0;
  final scoresGreaterThan75 = scores.where((element) => element > 75);

  if (scoresGreaterThan75.isEmpty) {
    return 0;
  }

  return scoresGreaterThan75.fold(0, (previousValue, element) {
        counter++;
        return previousValue + element;
      }) /
      counter;
};
