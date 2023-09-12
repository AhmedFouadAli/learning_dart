class Test {
  // The goal of the lesson to introduce the extension 
  String _name;
  int _id;
  List<double> _grades;
  Test({required String name, required int id, required List<double> grades}) :
    _name = name,
    _id = id,
    _grades = grades;

// ### Getter ###
  String get name => _name;
  int get id => _id;
  List<double> get grades => _grades;

// ### Setter ###
  set name(String value) => _name = value;
  set id(int value) => _id = value;
  set grades(List<double> value) => _grades = value;

// ### End of Getter and Setter ###




}
