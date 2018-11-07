import 'package:flutter/material.dart';
//import 'Profile.dart';

//Login Page
class LoginPage extends StatefulWidget {
  LoginPage();
  @override
  State createState() => new LoginPageState();
}

 class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("images/c1.jpg"),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                child: new Theme(
                    data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.amber,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.amber, fontSize: 25.0))),
                    child: new Container(
                      padding: const EdgeInsets.all(50.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Ingrese correo electronico",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Ingrese contraseña",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(top: 25.0)),
                          new MaterialButton(
                            color: Colors.amber,
                            textColor: Colors.white,
                            child: new Text("Ingresar"),
                            onPressed: () {
                              
                                
                            },
                            splashColor: Colors.redAccent,
                          )
                        ],
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}