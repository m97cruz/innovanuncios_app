import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SignInState();
  
}

class _SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Registra tu cuenta')
       ),
      body: Center(child: Text('SignIn '),),
    );
  }
}