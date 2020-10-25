
import 'package:ApiWithProvider/models/employee_model.dart';
import 'package:ApiWithProvider/services/employee_api.dart';
import 'package:flutter/foundation.dart';


class EmployeeProvider with ChangeNotifier{
  EmployeeModel _employeeModel = EmployeeModel(employes: []);
  EmployeeApi _employeeApi = EmployeeApi();

  EmployeeModel get employeeModel => _employeeModel;

  set employeeModel(EmployeeModel employeeModel) {
    _employeeModel = employeeModel;
    notifyListeners();
  }

  Future<void> fetchEmployes() async{
    print('########### inside employe provider 1');
    employeeModel = await _employeeApi.fetchEmployes();
    print('########### inside employe provider 2');
  }
}