import 'package:ApiWithProvider/models/employee_model.dart';
import 'package:ApiWithProvider/provider/employe_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Consumer<EmployeeProvider>(
          builder: (_, EmployeeProvider employeeProvider, __) {
        if (employeeProvider.employeeModel.employes.isEmpty)
          return Center(
            child: Text('NO Data'),
          );
        return ListView.builder(
            itemCount: employeeProvider.employeeModel.employes.length,
            itemBuilder: (_, int index) {
              Employe employe = employeeProvider.employeeModel.employes[index];
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Name : ${employe.employeeName}"),
                        Text("Salary : ${employe.employeeSalary} DH"),
                        Text("Age : ${employe.employeeAge} years"),
                      ],
                    ),
                  ),
                ),
              );
            });
      }),
    );
  }
}
