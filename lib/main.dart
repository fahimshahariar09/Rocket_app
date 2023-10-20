import 'package:flutter/material.dart';
import 'package:rocket_logo/home_page.dart';
import 'package:rocket_logo/welcome_page.dart';


import 'login_page.dart';

void main(){
  runApp(const MyClass());
}


class MyClass extends StatelessWidget {
  const MyClass({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:WelcomePage()
    );
  }
}

