import 'dart:io';

//list
// void main() {
//   List numbers = [4, 2, 5, 1, 2, 4, 7];
//   numbers.sort();
//   print(numbers);
//   var n = numbers.reversed;
//   n.toList();
//   print(n.runtimeType);
//   print (n.toList()[0]);
//   print(n.toList());
// }

//map

Map<String, dynamic> student = {
  "name": "Anas",
  "class": "BSCS",
  "age": 21,
  "gender": "male",
  "subjects": ["Maths", "Physics", "Chemistry", "Biology"],
};
void main() {
  print(student.keys);
  print(student.values);
  print(student["name"]);
  print(student.isEmpty);
  print(student);
  var news = student.toString();
  print(student.runtimeType);
  print(news.runtimeType);
  print(news);
  if (student["subjects"].length == 4) {
    print("All subjects are there.");
  } else {
    print("All subjects are not there.");
  }
  // var test = student.putIfAbsent("address", () => news);
  print(student);
  // print(test);
  student.removeWhere((key, value) => ((key == "subjects" && value == ["Biology"])));

  List students = [
    {
      "name": "Anas",
      "class": "BSCS",
      "age": 21,
      "marks": 100,
    },
    {
      "name": "Amna",
      "class": "BSCS",
      "age": 21,
      "marks": 100,
    },
  ];
  students.retainWhere((e) => e["marks"] < 50);
  print(students);{
    
  }
  // print (students[1]["name"]);
}
