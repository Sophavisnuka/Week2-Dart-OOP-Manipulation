import 'addressClass.dart';

enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final Address _address;
  final List<Skill> _skill;
  final int _baseSalary;
  final int _yearsOfExperience;

  Employee({required name, required baseSalary, required yearsOfExperience, required address})  : _name = name,
        _baseSalary = baseSalary,
        _yearsOfExperience = yearsOfExperience,
        _address = address,
        _skill = [Skill.OTHER]; // fixed default

  //Named constructor for Mobile Developer
  Employee.mobileDeveloper({required name, required baseSalary, required yearsOfExperience, required address, List<Skill>? skill})  : _name = name,
        _baseSalary = baseSalary,
        _yearsOfExperience = yearsOfExperience,
        _address = address,
        _skill = skill ?? [Skill.FLUTTER, Skill.DART]; // customizable
      
  String get Name => _name;
  Address get getAddress => _address;
  List get getSkill => _skill;
  int get BaseSalary => _baseSalary;
  int get YearsOfExperience => _yearsOfExperience;
  
  //Compute Salary
  double ComputeSalary () {
    double totalSalary = 0;
    totalSalary  = BaseSalary + YearsOfExperience * 2000;
    for (var EmpSkill in _skill) {
      if (EmpSkill == Skill.FLUTTER) {
        totalSalary += 5000;
      } else if (EmpSkill == Skill.DART) {
        totalSalary += 3000;
      } else if (EmpSkill == Skill.OTHER) {
        totalSalary += 1000;
      } else {
        totalSalary;
      }
    }
    return totalSalary;
  }

  void printDetails() {
    print('Employee: $_name \nBase Salary: \$${_baseSalary} \nExperience: $_yearsOfExperience \nAddress: $_address \nSkill: $_skill \nTotal Salary: \$${ComputeSalary()}\n');
  }
}