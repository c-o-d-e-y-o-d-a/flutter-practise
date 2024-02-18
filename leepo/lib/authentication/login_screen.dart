import 'package:flutter/material.dart';
import 'package:leepo/authentication/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  
  TextEditingController EmailtextEditingController =
      new TextEditingController();
  TextEditingController PassWordtextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                ),
                Text(
                  'Login as a User',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w600),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: EmailtextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: 'E mail',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(),
                      hintText: 'Password',
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                  ),
                )),
                SizedBox(
                  height: 6,
                ),
                TextButton(
                    onPressed: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );

                    },
                    child: Text("Don't have an Account? Sign up here",
                        style: TextStyle(color: Colors.white)))
              ],
            ),
          ),
        ));
  }
}
