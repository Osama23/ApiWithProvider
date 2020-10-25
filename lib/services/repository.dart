
import 'package:ApiWithProvider/provider/employe_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Repository{
  Future<void> fetchEmployes(BuildContext context) async{

    EmployeeProvider employeeProvider = Provider.of(context, listen: false);
    await employeeProvider.fetchEmployes();

  }
}