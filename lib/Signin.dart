import 'package:flutter/material.dart';

//Sign in Page
class SigninPage extends StatefulWidget {
  SigninPage();
  @override
  State createState() => new SigninPageState();
}

class SigninPageState extends State<SigninPage> {
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
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Confirme contraseña",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Text(
                            'Haciendo clic a continuacion, aceptas los terminos de servicio y su Politica de Privacidad',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: new TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(top: 25.0)),
                          new MaterialButton(
                            color: Colors.amber,
                            textColor: Colors.white,
                            child: new Text("Registrarse"),
                            onPressed: () {
                              Navigator.pop(context);
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
