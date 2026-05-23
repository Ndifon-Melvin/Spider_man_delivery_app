import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/navigation.dart';
import 'package:flutter_application_1/screens/onbaording_screens.dart';
import 'package:flutter_application_1/screens/reset_password.dart';
import 'package:flutter_application_1/screens/sign_Up.dart';
import 'package:flutter_application_1/widgets/container.dart';
import 'package:flutter_application_1/widgets/fields.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isloading = false;

  Future<void> _signIn() async {    
    try {
      setState(() {
        isloading = true;
      });
      if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
        // Show an error message if either field is empty
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter both email and password')),
        );
        setState(() {
          isloading = false;
        });
        return;
      }
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the next screen or show a success message
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation()));
    } on FirebaseAuthException catch (e) {
      // Handle sign-in errors here
      print('Error: $e');
    }
    setState(() {
      isloading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>OnbaordingScreens())),
                  child: Icon(Icons.arrow_back_ios)
                  ),
                  SizedBox(width: 80,),
                Text('Sign In', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
            SizedBox(height: 50,),
            Image(image: AssetImage('assets/images/sign_in.png')),
            SizedBox(height:40,),
            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Email',
              size: 16,
              icon: Icons.email,
              controller: _emailController,
            ),
            SizedBox(height: 20,),

            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Password',
              size: 16,
              icon: Icons.lock,
              controller: _passwordController,
            ),
              SizedBox(height: 5,),
            Row(
              children: [
                Text(''),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword())),
                  child: Text('Forgot your password?', style: TextStyle(
                    fontSize: 15,  
                  ),),
                ),
              ],
            ),
            SizedBox(height: 50,),
            isloading
              ? CircularProgressIndicator(
                color: AppColors.red,
              )
              : GestureDetector(
                  onTap: () => _signIn(),
                  child: MyContainer(
                    width: 379,
                    height: 48,
                    radius: 15,
                color: AppColors.red,
                color1: AppColors.white,
                text: 'Sign In',
                size: 20,
                x: 0,
                y: 4,
              ),
            ),
              SizedBox(height: 80,),  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ', style: TextStyle(
                  fontSize: 15,  
                ),),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp())),
                  child: Text('Sign Up', style: TextStyle(
                    fontSize: 15,
                    color: AppColors.red,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
