import 'package:flutter/material.dart';

import 'afterlogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>

//bool value = false;
// Animation Starts Here
    with
        SingleTickerProviderStateMixin {
  bool _obsecureText = true;
  late Animation<double> iconanimation;
  late AnimationController iconAnimationController;
  bool changeButton = false;
  bool valuefirst = false;

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',
            style: TextStyle(
              shadows: [
                Shadow(
                    color: Colors.black,
                    offset: Offset(3.0, 1.5),
                    blurRadius: 3)
              ],
            )),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://images.unsplash.com/photo-1566895291281-ea63efd4bdbc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cm95YWx0eSUyMGZyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.45),
            colorBlendMode: BlendMode.darken,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: FlutterLogo(
                    style: FlutterLogoStyle.stacked,
                    textColor: Color.fromARGB(255, 181, 212, 238),
                    size: iconAnimationController.value * 250,
                  ),
                ),
                Form(
                  child: Theme(
                    data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.lightBlue,
                      inputDecorationTheme: const InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.blue, fontSize: 20.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Color.fromARGB(255, 174, 222, 245),
                                ),
                                fillColor: Colors.black26,
                                filled: true,
                                hintText: "Enter Username / Email",
                                labelText: "Username",
                                hoverColor: Color.fromARGB(255, 0, 0, 0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.emailAddress,
                            maxLength: 15,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            obscuringCharacter: '▪',
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock,
                                    color: Color.fromARGB(255, 174, 222, 245)),
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obsecureText = !_obsecureText;
                                      });
                                    },
                                    child: Icon(_obsecureText
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                fillColor: Colors.black26,
                                filled: true,
                                hintText: "Enter Password",
                                labelText: "Password",
                                hoverColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.text,
                            obscureText: _obsecureText,
                            maxLength: 15,
                          ),
                          // new Padding(padding: const EdgeInsets.only(top: 10.0)),
                          // TextButton(
                          //   onPressed: () {},
                          //   child: const Text('Forgot Password?'),
                          // ),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.blue,
                                  checkColor: Colors.white,
                                  value: valuefirst,
                                  onChanged: (value) {
                                    setState(() {
                                      valuefirst = value!;
                                    });
                                  }),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.blue,
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 2.0)
                                    ]),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'password');
                                },
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(shadows: [
                                    Shadow(
                                        color: Colors.blue,
                                        offset: Offset(3.0, 1),
                                        blurRadius: 3)
                                  ], color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          /* Row(
                            children: <Widget>[
                              Theme(data: ThemeData(unselectedWidgetColor: Colors.white), child: Checkbox(value:),),
                            ],
                          ), */

                          // new Padding(
                          //     padding: const EdgeInsets.only(top: 10.0)),
                          // new MaterialButton(
                          //   onPressed: () => {
                          //     Navigator.pushReplacement(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => AfterLogin(),
                          //       ),
                          //     ),
                          //   },
                          //   color: Colors.blue,
                          //   textColor: Colors.white,
                          //   child: new Text(
                          //     "Log in",
                          //     style: TextStyle(fontWeight: FontWeight.bold),
                          //   ),
                          //   splashColor: Colors.greenAccent,
                          // ),

                          InkWell(
                            onTap: () async {
                              setState(() {
                                changeButton = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AfterLogin(),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 2),
                              width: changeButton ? 50 : 140,
                              height: 45.0,
                              //color: Colors.blue,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(Icons.done, color: Colors.white)
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              color: Colors.black,
                                              offset: Offset(3, 2),
                                              blurRadius: 5)
                                        ],
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 8),
                              ),
                            ),
                          ),

                          /*new Padding(
                              padding:
                                  const EdgeInsets.only(top: 40.0, right: 1)), */
                          /*   SizedBox(
                            height: 20,
                          ), 
                          */
                          const SizedBox(
                            height: 80,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: RichText(
                                    text: TextSpan(
                                        text: "Create New Account?",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                        ),
                                        children: <TextSpan>[
                                      TextSpan(
                                        text: " Sign Up.",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 23,
                                          // shadows: [
                                          //   Shadow(
                                          //       color: Colors.red,
                                          //       offset: Offset(1, 0.5))
                                          // ],
                                        ),
                                      )
                                    ])),
                              ),
                              // child: const Text(
                              //   'Create New Account ? / Sign Up ',
                              //   style: TextStyle(
                              //       shadows: [
                              //         Shadow(
                              //             color: Colors.blue,
                              //             offset: Offset(2.0, 1),
                              //             blurRadius: 3)
                              //       ],
                              //         decoration: TextDecoration.underline,
                              //         decorationColor: Colors.blue,
                              //         color: Colors.white,
                              //         fontSize: 20,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                            ],
                          ),
                          /*
                          Text('I accept terms and conditions and privacy policy.',
                          style: TextStyle(fontSize: 17.0),
                          ),
                          SizedBox(width: 10),
                          Checkbox(
                              value: this.value,
                              onChanged: (bool value) {
                                setState(() {
                                  this.value = value;
                                });
                              },),  */
                          // home: const CheckBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
