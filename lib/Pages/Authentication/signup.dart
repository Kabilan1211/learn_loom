import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/constant.dart';
import 'package:learn_loom/Constants/textStyle.dart';
import 'package:learn_loom/Pages/Authentication/login.dart';
import 'package:learn_loom/Widgets/textField.dart';

bool isPasswordStrong(String password) {
  const minLength = 8;
  final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
  final hasLowercase = RegExp(r'[a-z]').hasMatch(password);
  final hasDigits = RegExp(r'\d').hasMatch(password);
  final hasSpecialChars = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);

  return password.length >= minLength &&
      hasUppercase &&
      hasLowercase &&
      hasDigits &&
      hasSpecialChars;
}

String? _validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter a password';
  } else if (!isPasswordStrong(value)) {
    return 'Password must be at least 8 characters long and contain uppercase, lowercase, digits, and special characters';
  }
  return null;
}

String? _validateEmail(String? value) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value!)) {
    return 'Enter a valid email address';
  }
  return null;
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final TextDecor textDecor = TextDecor();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade200,
        title: Text("REGISTER", style: textDecor.blackBold(),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField1(
                  controller: _emailController, 
                  hintText: "Enter your Email", 
                  secureText: false, 
                  validator: _validateEmail),
                CustomTextField1(
                  controller: _passwordController, 
                  hintText: "Enter your Password", 
                  secureText: true, 
                  validator: _validatePassword),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      email = _emailController.text;
                      password = _passwordController.text;
                    });
                  }, 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, ),
                  child: Text("Register", style: textDecor.blackBold(), )),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                  }, 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  child: Text(" Login  ", style: textDecor.blackBold(), ))
                
              ],
            ),
          ),
        ),),
    );
  }
}