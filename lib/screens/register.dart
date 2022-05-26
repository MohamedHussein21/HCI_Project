import 'package:flutter/material.dart';

import '../componant.dart';
import '../layout/layout.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? _radioValue;
  String? choice;

  void radioButtonChanges(String? value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'one':
          choice = value;
          break;
        case 'two':
          choice = value;
          break;
        default:
          choice = null;
      }
      debugPrint(choice); //Debug the choice in console
    });
  }
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                ' Lets Get Started !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 30,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.text,
                label: 'Name',
                prefix: Icons.person_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.text,
                label: 'Email',
                prefix: Icons.email,
              ),
              const SizedBox(
                height: 20,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.text,
                label: 'Phone',
                prefix: Icons.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.text,
                label: 'Password',
                prefix: Icons.lock,
              ),
              const SizedBox(
                height: 20,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.text,
                label: 'Confirm Password',
                prefix: Icons.lock,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 'one',
                    groupValue: _radioValue,
                    onChanged: radioButtonChanges,
                  ),
                  const Text(
                    "Owner",
                  ),
                  const SizedBox(width: 20,),
                  Radio(
                    value: 'tow',
                    groupValue: _radioValue,
                    onChanged: radioButtonChanges,
                  ),
                  const Text(
                    "User",
                  ),
                ],
              ),
              defaultButton(function: () {
                navigatAndFinish(context, Layout());
              }, text: 'create'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text('login here ')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
