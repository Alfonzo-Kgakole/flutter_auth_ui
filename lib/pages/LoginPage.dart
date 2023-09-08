import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/pages/registrationPage.dart';
import 'package:flutter_auth_ui/utils/appColors.dart';
import 'package:flutter_auth_ui/widgets/inputText_Widget.dart';
import 'package:flutter_auth_ui/widgets/primaryButton.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coffee, color: AppColors.whiteColor, size: 25),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "JOT",
                      style: GoogleFonts.montserrat(
                          color: AppColors.whiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor),
                ),
                const SizedBox(height: 50),
                InputFiend(
                    controller: emailController,
                    hintText: 'please enter your email',
                    icon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                InputFiend(
                  controller: passwordController,
                  hintText: 'please enter your password',
                  icon: Icons.password,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Please enter your details below",
                  style: GoogleFonts.montserrat(
                      color: AppColors.whiteColor, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 50),
                button(text: "Sign In", onPressed: () {}),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account",
                        style: GoogleFonts.montserrat(
                            color: AppColors.whiteColor, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registration()));
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.montserrat(
                              color: AppColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
