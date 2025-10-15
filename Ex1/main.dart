import 'addressClass.dart';
import 'employeeClass.dart';

void main() {
  var emp1 = Employee(name: 'Sokea',baseSalary: 40000,yearsOfExperience: 5,address: Address(city: 'Phnom Penh', street: 'Toul Tum Pung'));
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper(name: 'Ronan',baseSalary: 42000,yearsOfExperience: 4,address: Address(city: 'Phnom Penh', street: 'Toul Kork'));
  emp2.printDetails();

  var emp3 = Employee.mobileDeveloper(name: 'Visal',baseSalary: 45000,yearsOfExperience: 6,address: Address(city: 'Phnom Penh', street: 'Sen Sok'),skill: [Skill.FLUTTER, Skill.OTHER]);
  emp3.printDetails();
}