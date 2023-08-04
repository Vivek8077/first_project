import 'package:flutter/material.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(primaryColor: Colors.amberAccent),
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() =>  _LoginPageState();
 
}

class  _LoginPageState extends State <LoginPage> 
 // Animation Starts Here
   with SingleTickerProviderStateMixin{

    late Animation<double> iconanimation;
    late AnimationController iconanimationController;

    @override

    void initState(){
      super.initState();
        iconanimationController = new AnimationController(vsync: this,duration: new Duration(microseconds:400));
      iconanimation = new CurvedAnimation(parent: iconanimationController, curve: Curves.bounceIn);
      iconanimation.addListener(() => this.setState(() {}));
      iconanimationController.forward();
    }
  // Animation Ends Here
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body:
       new Stack(
        fit:StackFit.expand,
      
      
        
        children: <Widget>[
          new Image(image:
           new AssetImage('images/img18.jpg'),
           fit: BoxFit.cover,
          //  color: Colors.black.withOpacity(0.5),
          //  colorBlendMode: BlendMode.darken,
           
           ),
           new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              new FlutterLogo(
                size: iconanimationController.value * 100,
              ),
              new Form(child: Theme(
                data: new ThemeData(brightness: Brightness.dark,
                primarySwatch: Colors.blue,
                inputDecorationTheme: new InputDecorationTheme(
                  labelStyle: new TextStyle(
                    color: Colors.blue,fontSize: 20.0,
                  )
                )),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: new Column(
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Enter Your Email"
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                       new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Enter Your Password"
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 25.0)),
                      new MaterialButton(onPressed:() => {} ,
                      color:Colors.blue,
                      textColor: Colors.white,
                      
                      
                      child: new Text("Login",),
                      splashColor: Colors.blueAccent,)
                              
                    ],
                  ),
                ),
              ))
            ]
           )
        ],
      ),
      
    
    );
  }
}