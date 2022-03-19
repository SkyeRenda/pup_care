import 'package:flutter/material.dart';
import 'package:pup_care/pages/signin.dart';
import 'package:pup_care/pages/home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                      Text("Login", style: TextStyle(fontSize: 50)),
                      Text("Please sign in to continue",
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 49, 49))),
                    ]),
              ),
              Column(children: [
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
                  children: const [
                    Image(
                        height: 20,
                        image: AssetImage('lib/assets/lockIcon.png')),
                    Flexible(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
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
                      child: const Text('Log In')),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        _navigateToNextScreen(context);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.purple),
                      ))
                ],
              )
            ]),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignIn()));
  }

  void _navigateTohomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
  }
}
