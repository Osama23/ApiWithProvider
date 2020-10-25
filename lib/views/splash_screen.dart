import 'package:ApiWithProvider/services/repository.dart';
import 'package:ApiWithProvider/views/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Repository repository = Repository();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_callApi);
  }

  _callApi(_) {
    repository.fetchEmployes(context);
    goToNextPage();
  }

  goToNextPage(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomePage()),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      
    );
  }
}