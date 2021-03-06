

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:innovanuncios_app/src/views/dashboard.dart';
import 'package:innovanuncios_app/src/views/signup.dart';


class LoginPage extends StatelessWidget {

Map<String, dynamic> uData = {'passwd': '123456','user': 'innovauser'};

TextEditingController userCtrl= new TextEditingController();
TextEditingController passwdCtrl= new TextEditingController();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'InnovAnuncios',
      home: Scaffold(
        appBar: AppBar(
          title: Text('InnovAnuncios')
        ),
        body:  Container(
          padding: EdgeInsets.all(15.00),//Para que no se peguen a los bordes
          child:  ListView(
            children: <Widget>[
              Image.asset('assets/imagen/logo.png', 
                width: 340, height: 350,),
              TextFormField(
                controller: userCtrl,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  //hintText: "Usuario",
                  labelText: "Usuario",
                  fillColor: Colors.white70,
                  icon: Icon(Icons.person)
                )
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwdCtrl,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ), 
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  hintText: "Contraseña",
                  fillColor: Colors.white70,
                  icon: Icon(Icons.vpn_key)
                )
              ),
              SizedBox(height: 20,),
              new Builder(
                builder: (context) => (
                  RaisedButton(
                    onPressed: (){
                      /* if(userCtrl.text == uData['user'] && passwdCtrl.text == uData['passwd']){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
                      }*/
                      if (userCtrl.text != '' && passwdCtrl.text != ''){
                      /*if(userCtrl.text == uData['user'] &&
                      passwdCtrl.text == uData['passwd']){
                        Navigator.of(context).pushNamed('/dashboard');*/
                        if(userCtrl.text == uData['user'] && passwdCtrl.text == uData['passwd']){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
                        }else{
                          return showDialog(
                            context: context, 
                            builder: (context){
                              return AlertDialog(
                                title: Text('Inicio de Sesion'),
                                content: Text('Porfavor, Revisa tus credenciales'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("OK"),
                                    onPressed: () { Navigator.of(context).pop(); },
                                  )
                                ],
                              );
                            }
                          );// }Builder
                        }// }if de credenciales malas
                      }else{
                        return showDialog(
                          context: context, 
                          builder: (context){
                            return AlertDialog(
                              title: Text('Inicio de Sesion'),
                              content: Text('Debes ingresar tu usuario y contraseña'),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("OK"),
                                    onPressed: () { Navigator.of(context).pop(); },
                                )
                              ],
                            );
                          }
                        );
                      } // }else de campos vacios
                    },// }onpreseed, 
                    child: Text('Iniciar Sesion')
                  )
                )
              ),
              new Builder(
                builder: (context) => (
                  RaisedButton(
                    onPressed: (){
                      //Navigator.of(context).pushNamed('/signup');
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Signup()));
                    },
                    child: Text('Registrarme')
                  )
                )
              )
            ],
          )
        )
      )
    );
  }
}