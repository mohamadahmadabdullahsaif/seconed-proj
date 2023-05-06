void main() {
  DateTime bdate = DateTime(2001, 4, 28);
  int age = calculateAge(bdate);
  print(age);
}

int calculateAge(DateTime birthdate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthdate.year;
  if (birthdate.month > currentDate.month) {
    age--;
  } else if (birthdate.month == currentDate.month &&
      birthdate.day > currentDate.day) {
    age--;
  }
  return age;
}
