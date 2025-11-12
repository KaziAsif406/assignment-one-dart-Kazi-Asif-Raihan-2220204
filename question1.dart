// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐


// function calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double

double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

// function getGrade that takes a score (int) and returns a grade (String)

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
  return grd;
}

void main() {
  String name = 'Kazi Asif';
  int age = 23;
  double height = 1.87;
  double weight = 82.2;
  bool isStudent = true;

  double bmi = calculateBMI(weight, height); // Example: 150 lbs, 5.9 ft
  String grade = getGrade(75); // Example score

  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('BMI: $bmi');
  print('Grade: $grade');
}
