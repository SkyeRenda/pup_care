import 'package:flutter/material.dart';
import 'package:pup_care/pages/home_page.dart';
import 'package:pup_care/pages/login.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool vis = false;
  String password1 = '';
  String password2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20.0),
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Create Account", style: TextStyle(fontSize: 45)),
                    ]),
              ),
              Column(children: [
                Row(
                  children: const [
                    Image(
                        height: 20, image: AssetImage('lib/assets/person.png')),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Image(
                        height: 20, image: AssetImage('lib/assets/email.png')),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Image(
                        height: 20,
                        image: AssetImage('lib/assets/lockIcon.png')),
                    Flexible(
                      child: TextField(
                        onChanged: (String value) {
                          password1 = value;
                          if (password1 == password2) {
                            setState(() {
                              vis = false;
                            });
                          }
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Image(
                        height: 20,
                        image: AssetImage('lib/assets/lockIcon.png')),
                    Flexible(
                      child: TextField(
                        onChanged: (String value) {
                          password2 = value;
                          if (password1 != password2) {
                            setState(() {
                              vis = true;
                            });
                          } else {
                            setState(() {
                              vis = false;
                            });
                          }
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Confirm Password",
                        ),
                      ),
                    )
                  ],
                ),
                Visibility(
                    visible: vis,
                    child: const Text(
                      'The passwords do not match',
                      style: TextStyle(color: Colors.red),
                    )),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.purple,
                      ),
                      onPressed: () {
                        _navigateTohomeScreen(context);
                      },
                      child: const Text('Sign Up')),
                ],
              ),
              Row(
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        _navigateToLoginScreen(context);
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.purple),
                      ))
                ],
              )
            ]),
      ),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Login()));
  }

  void _navigateTohomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
  }
}
