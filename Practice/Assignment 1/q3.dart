void main() {
  int classHeld = 16;
  int classAttended = 10;

  double percentage = (classAttended / classHeld) * 100;
  print("Percentage: $percentage%");

  if (percentage >= 75) {
    print("You are allowed to sit in the exam.");
  } else {
    print("You are not allowed to sit in the exam.");
  }
}
