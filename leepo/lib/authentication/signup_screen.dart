import 'package:flutter/material.dart';
import 'package:leepo/methods/common_methods.dart';

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
  CommonMethods cMethods = new CommonMethods();


    checkIfNetworkIsAvailable(){
      cMethods.checkConnectivity(context);
      SignUpFormValidation();
    }

    SignUpFormValidation(){
      if(userNameEditingController.text.trim().length < 3)
      {
        cMethods.displaySnackBar("your name must be at least 4 or more characters", context);

      }
      else if((userPhonetextEditingController.text.trim().length<7)){
        cMethods.displaySnackBar("write a valid phone number", context);

      }

      else if(!(EmailtextEditingController.text.contains("@"))){
        cMethods.displaySnackBar("please write a valid email address", context);
      }
      else if(PassWordtextEditingController.text.trim().length < 5){
        cMethods.displaySnackBar("your password must be at least 6 or more characters", context);
      }
      else{

      }
      
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

                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 10,
                ),


                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: userPhonetextEditingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintText: 'Phone Number',
                    ),
                  ),
                ),

                SizedBox(height: 10,),


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
                  onPressed: () {checkIfNetworkIsAvailable();},
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
