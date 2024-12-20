import 'package:flutter/material.dart';
import 'package:flutter_unit_test/salary_calculation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic hourController = TextEditingController();
  int? hour = 0;

  SalaryCalculation sc = SalaryCalculation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Testing"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Per Hour Payment 400\$"),
            SizedBox(
              height: 20,
            ),
            TextField(
              key: Key("hour_input"),
              controller: hourController,
              decoration: InputDecoration(
                  labelText: "Enter Working Hour",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                key: Key("calculate_button"),
                onPressed: () {
                  setState(() {
                    hour = int.tryParse(hourController.text) ?? 0;
                  });
                },
                child: Text("Submit")),
            SizedBox(
              height: 20,
            ),
            if (hour != null)
              Text(
                "Total Salary Is : ${sc.calculateSalary(hour!)}\$",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
          ],
        ),
      ),
    );
  }
}
