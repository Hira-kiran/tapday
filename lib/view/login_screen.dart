import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tapday_project/extension/sizedbox.dart';
import '../utils/custom_button.dart';
import '../utils/field_validations.dart';
import '../utils/textfield_decoration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Log in",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                30.ph,
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: emailController,
                          validator: FieldValidator.validateEmail,
                          keyboardType: TextInputType.emailAddress,
                          decoration: AppDecoration().fieldDecoration(
                              hintText: "Email",
                              preIcon: const Icon(
                                Icons.email,
                                color: Colors.blue,
                              ))),
                      15.ph,
                      TextFormField(
                          controller: passwordController,
                          validator: FieldValidator.validatePassword,
                          decoration: AppDecoration().fieldDecoration(
                              hintText: "Password",
                              suffixIcon: const Icon(Icons.visibility),
                              preIcon: const Icon(
                                Icons.lock,
                                color: Colors.blue,
                              ))),
                    ],
                  ),
                ),
                30.ph,
                RoundedButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  text: "Login",
                ),
                25.ph,
                20.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
