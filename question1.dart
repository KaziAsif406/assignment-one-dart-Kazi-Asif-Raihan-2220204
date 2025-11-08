// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
// TODO: Complete the following requirements:

// 1. Create variables of different data types: String, int, double, bool

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double

double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F

String getGrade(int score) {
  String grd;
  if (score >= 90 && score <= 100){
    grd = 'A';
  }
  else if (score >= 80 && score <= 89){
    grd = 'B';
  }
  else if (score >= 70 && score <= 79){
    grd = 'C';
  }
  else if (score >= 60 && score <= 69){
    grd = 'D';
  }
  else{
    grd = 'F';
  }
  return grd; // TODO: Return appropriate grade
}

void main() {
  // TODO: Initialize your variables with appropriate values......
  String name = 'Kazi Asif';
  int age = 23;
  double height = 1.87;
  double weight = 82.2;
  bool isStudent = true;
  
  // TODO: Calculate BMI and grade
  double bmi = calculateBMI(weight, height); // Example: 150 lbs, 5.9 ft
  String grade = getGrade(85); // Example score
  
  // TODO: Use string interpolation to display the results
  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('BMI: $bmi');
  print('Grade: $grade');
}
