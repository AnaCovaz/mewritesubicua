import 'package:flutter/material.dart';
import 'Login.dart';
import 'Signin.dart';
import 'Cajon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  



  @override
  Widget build(BuildContext context) {

    return new Scaffold(
       appBar: AppBar(
          title: new Text(
        'Platform Widgets',
      ),
      leading:// PlatformIconButton(
               new RaisedButton(
                child: Icon(Icons.menu),
                
          onPressed: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cajon()),
                   );
                   //drawer: new Cajon(),
                },
              
              ),
          ),

      body: new Center(
        child: new Column(
           children: <Widget>[
  
        new CarouselSlider(
              items: ["images/c1.jpg","images/c1.jpg","images/c1.jpg"].map((i) {
                return new Builder(
                  builder: (BuildContext context) {
                    return new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                       // color: Colors.lightBlue
                      ),
                   //   child: new AssetImage("$i")
                      child: new Image(
            image: new AssetImage("$i"),
            fit: BoxFit.cover,
          ),
                    );
                  },
                );
              }).toList(),
              height: 250.0,
              autoPlay: true
            ),



         new Padding(
              padding: const EdgeInsets.all(5.0),
              child: new RaisedButton(
                child: const Text('Login'),
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                splashColor: Colors.lightBlueAccent,
                onPressed: () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new LoginPage()),
                    );
                },
              ),
            ), 
         new Padding(
              padding: const EdgeInsets.all(5.0),
              child: new RaisedButton(
                child: const Text('Sign in'),
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                splashColor: Colors.lightBlueAccent,
                onPressed: () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new SigninPage()),
                    );
                },
              ),
            ), 

             ],
      )
      ),
      drawer:new Cajon(),
    );
  }
}



