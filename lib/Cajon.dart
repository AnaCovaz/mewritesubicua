import 'package:flutter/material.dart';
import 'Login.dart';
import 'Signin.dart';

class Cajon extends StatelessWidget {

  Cajon();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
        //  DrawerHeader(
         //   child: Padding(
         // padding: const EdgeInsets.all(5.0),
          // child: new Image(
           // image: new AssetImage("assets/e.png"),
           // fit: BoxFit.cover,
          //),
          //),
          //),
          ListTile(
            title: Text('Explorar',
                     style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.left,),
                    
            //onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
            // Navigator.pop(context);
          //  },
          ),
          ListTile(
            title: Text('Registrarse',
                     style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.left,),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new SigninPage()),
                    );
             },
          ),
          ListTile(
            title: Text('Iniciar Sesión',
                     style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.left,),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new LoginPage()),
                    );
            },
          ),
          
        ],
      ),
    );
  }

}
