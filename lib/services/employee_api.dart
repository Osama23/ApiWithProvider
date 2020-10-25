import 'package:ApiWithProvider/models/employee_model.dart';
import 'package:http/http.dart';

class EmployeeApi{
  Client _client = Client();

  Future<EmployeeModel> fetchEmployes() async{
    
    Response response = await _client.get(
      "http://dummy.restapiexample.com/api/v1/employees",
    );

    if(response.statusCode == 200){
      print("######## 200");
      return employeeModelFromJson(response.body);
    }

    return EmployeeModel(employes: []);
  }
}