import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/salary_calculation.dart';

void main() {
  // for a single unit test
  test("Single Test", () {
    SalaryCalculation sc = SalaryCalculation();
    int salary = sc.calculateSalary(2);
    expect(salary, 1000);
  });

  // For multiple tests
  group("Multiple Unit Test", () {
    test("Test - 1", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(35);
      expect(salary, 14000);
    });
    test("Test - 2", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(45);
      expect(salary, 19000);
    });
    test("Test - 3", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(-45);
      expect(salary, 19000);
    });
  });
}
