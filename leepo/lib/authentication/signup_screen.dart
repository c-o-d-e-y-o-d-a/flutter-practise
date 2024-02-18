import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  TextEditingController userNameEditingController = new TextEditingController();
  TextEditingController EmailtextEditingController = new TextEditingController();
  TextEditingController PassWordtextEditingController = new TextEditingController();
    TextEditingController userPhonetextEditingController = new TextEditingController();


    checkIfNetworkIsAvailable(){
      
    }


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
                  'Create a users account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  child: TextField(
                    controller: userNameEditingController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "UserName",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: 'UserName',
                    ),
                  ),
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
                    'Sign up',
                  ),
                  
                )),
                SizedBox(height: 6,),




                TextButton(
                  onPressed: ()
                {
                    Navigator.pop(context);
                },
                 child: Text(
                  "Already have an Account? Login Here",
                  style: TextStyle(color: Colors.white)
                  ))
              ],
            ),
          ),
        ));
  }
}
