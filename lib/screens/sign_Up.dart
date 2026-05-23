
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/navigation.dart';
import 'package:flutter_application_1/screens/reset_password.dart';
import 'package:flutter_application_1/screens/sign_In.dart';
import 'package:flutter_application_1/widgets/container.dart';
import 'package:flutter_application_1/widgets/fields.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool isloading = false;

  Future<void> _signUp() async {
    try {
      setState(() {
        isloading = true;
      },);

      
      if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty && _nameController.text.isNotEmpty && _phoneController.text.isNotEmpty) {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      // You can also update the user's display name and phone number here if needed
      await userCredential.user!.updateDisplayName(_nameController.text);

        Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation()));
        
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please fill in all fields')),
        );
        setState(() {
          isloading = false;
        });
        return;
      }

      
      
      // Note: Firebase Authentication does not support storing phone numbers directly. You may need to use Firestore or Realtime Database for that.
      // Navigate to the next screen or show a success message
    } on FirebaseAuthException catch (e) {
      // Handle sign-up errors here
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
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 80),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 25),
            Image(image: AssetImage('assets/images/sign_up.png')),
            SizedBox(height: 10),
            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Name',
              size: 16,
              icon: Icons.person,
              controller: _nameController,
            ),
            SizedBox(height: 10),

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
            SizedBox(height: 10),

            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Phone Number',
              size: 16,
              icon: Icons.phone,
              controller: _phoneController,
            ),
            SizedBox(height: 10),

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
            SizedBox(height: 25),

            isloading
                ? CircularProgressIndicator(
                  color: AppColors.red,
                )
                : MyContainer(
              width: 379,
              height: 48,
              radius: 15,
              color: AppColors.red,
              color1: AppColors.white,
              text: 'Sign Up',
              size: 20,
              x: 0,
              y: 4,
              onTap: _signUp,
            ),

            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
