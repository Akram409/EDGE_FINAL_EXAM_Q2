class SalaryCalculation{
  int payment = 400;
  int calculateSalary(int hour) {
    int hours = hour.abs();

    if (hours <= 40) {
      return hours * payment;
    }
    int extra = hours - 40 ;
    return (40 * payment) + (extra * 600);
  }
}