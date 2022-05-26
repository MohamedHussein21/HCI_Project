import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled3/screens/register.dart';

import '../componant.dart';
import '../layout/layout.dart';


class Login_Screen extends StatefulWidget {
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/images/imageL.jpg'),
                  height: 210,
                  width: 210,
                ),
              ),
              const Text(
                'Welcome  !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),

              defaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                label: 'Email',
                prefix: Icons.person_outline,
              ),
              const SizedBox(
                height: 15,
              ),
              defaultFormField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                label: 'Password',
                prefix: Icons.lock,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Forget Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              defaultButton(function: () {
navigatAndFinish(context, Layout());
              }, text: 'LOG IN'),
              const SizedBox(
                height: 20,
              ),




              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account "),
                  TextButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                      child: Text('Sign Up ')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}
