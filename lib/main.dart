import 'package:flutter/material.dart';
import 'package:flutter__app/login.dart';
import 'package:flutter__app/register.dart';
import 'package:flutter__app/password.dart';
import 'package:flutter__app/checkbox.dart';
import 'package:flutter__app/afterlogin.dart';
import 'package:flutter__app/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: const SplashScreen(),
    //home: CheckBox(),
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashscreen',
    routes: {
      'login': (context) => const LoginPage(title: ''),
      'register': (context) => const MyRegister(),
      'password': (context) => const ForgotPassword(),
      'checkbox': (context) => const CheckBox(),
      'afterlogin': (context) => const AfterLogin(),
      'splashscreen': (context) => const SplashScreen(),
    },
    //theme: new ThemeData(primaryColor: Colors.amber),
  ));
}

/*

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
// Animation Starts Here
    with
        SingleTickerProviderStateMixin {
  late Animation<double> iconanimation;
  late AnimationController iconAnimationController;

  @override
  void initState() {
    super.initState();
    iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 400));
    iconanimation = new CurvedAnimation(
        parent: iconAnimationController, curve: Curves.bounceIn);
    iconanimation.addListener(() => this.setState(() {}));
    iconAnimationController.forward();
  }
  // Animation Ends Here

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      backgroundColor: Colors.blue,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://thumbs.dreamstime.com/b/vertical-shot-road-magnificent-mountains-under-blue-sky-captured-california-163571053.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.65),
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: iconAnimationController.value * 100,
              ),
              new Form(
                child: Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.lightBlue,
                    inputDecorationTheme: new InputDecorationTheme(
                        labelStyle:
                            new TextStyle(color: Colors.blue, fontSize: 20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: new Column(
                      children: <Widget>[
                        TextField(
                          decoration: new InputDecoration(
                              fillColor: Colors.black26,
                              filled: true,
                              hintText: "Enter Email :",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: new InputDecoration(
                              fillColor: Colors.black26,
                              filled: true,
                              hintText: "Enter Password :",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        // new Padding(padding: const EdgeInsets.only(top: 10.0)),
                        // TextButton(
                        //   onPressed: () {},
                        //   child: const Text('Forgot Password?'),
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            new TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 10.0)),
                        new MaterialButton(
                          onPressed: () => {},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: new Text(
                            "Log in",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          splashColor: Colors.greenAccent,
                        ),
                        /*new Padding(
                            padding:
                                const EdgeInsets.only(top: 40.0, right: 1)), */
                        /*   SizedBox(
                          height: 20,
                        ), 
                        */
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'register');
                              },
                              child: const Text(
                                'Create An Account ? / Sign Up !',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}  */
