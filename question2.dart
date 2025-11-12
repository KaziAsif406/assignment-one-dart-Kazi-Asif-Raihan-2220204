// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐

import 'dart:math';

void main() {

  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  
  // Map<String, int> to store student scores
  Map<String, int> studentScores = {};
  
  // For loop to assign random scores (between 60-100) to each student

  Random random = Random();
  for (String student in studentNames){
    int score = 60 + random.nextInt(41);
    studentScores[student] = score;
  }
  
  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;
  double totalScore = 0.0;
  
  studentScores.forEach((student, score) {
    totalScore += score;
    if (score > highestScore){
      highestScore = score;
      highestStudent = student;
    }
    if (score < lowestScore){
      lowestScore = score;
      lowestStudent = student;
    }
  });
  averageScore = totalScore / studentScores.length;
  
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");
  
  // 5. Switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    
    print("$student: $score ($category)");
  }
}
