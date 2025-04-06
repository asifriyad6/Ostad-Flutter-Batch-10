main() {
  List<Map<String, dynamic>> students = 
  [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];
  Map<String, double> averageScore = {};

  for (var student in students) {
    String name = student['name'];
    List<dynamic> scores = student['scores'];

    num totalScore = 0;
    for(var score in scores) {
      totalScore += score;
    }
    double average = totalScore / scores.length;
    averageScore[name] = double.parse(average.toStringAsFixed(2));
  }

  var formattedScores = Map.fromEntries(
    averageScore.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value)),
  );

  print(formattedScores);
}