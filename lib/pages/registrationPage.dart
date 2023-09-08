import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/pages/LoginPage.dart';
import 'package:flutter_auth_ui/utils/appColors.dart';
import 'package:flutter_auth_ui/widgets/inputText_Widget.dart';
import 'package:flutter_auth_ui/widgets/methods.dart';
import 'package:flutter_auth_ui/widgets/primaryButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();

  String genderSelected = "Male";
  //String genderSelected = "Female";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Jack",
                style: GoogleFonts.montserrat(
                    color: AppColors.whiteColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                "of all Trade",
                style: GoogleFonts.montserrat(
                    color: AppColors.whiteColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.003,
            ),
            Center(
              child: Text(
                "Please enter your information",
                style: GoogleFonts.montserrat(
                    color: AppColors.whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(height: 25),
            InputFiend(
              controller: nameController,
              hintText: 'please enter your name',
              icon: Icons.person,
            ),
            const SizedBox(
              height: 25,
            ),
            InputFiend(
              controller: emailController,
              hintText: 'please enter your email',
              icon: Icons.email,
            ),
            const SizedBox(
              height: 25,
            ),
            InputFiend(
              controller: passwordController,
              hintText: 'please enter your email',
              icon: Icons.password,
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: GoogleFonts.montserrat(color: AppColors.whiteColor),
                textAlign: TextAlign.center,
                controller: birthDateController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.date_range,
                    color: AppColors.whiteColor,
                    size: 25,
                  ),
                  hintText: "enter your Birthdate",
                  hintStyle: GoogleFonts.montserrat(
                      color: AppColors.greyColor, fontSize: 14),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.whiteColor)),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.whiteColor)),
                ),
                onTap: () async {
                  DateTime date = DateTime(1900);
                  FocusScope.of(context).requestFocus(FocusNode());
                  date = (await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100)))!;
                  String dateFormatter = date.toIso8601String();
                  DateTime dt = DateTime.parse(dateFormatter);
                  var formatter = DateFormat("dd-MMMM-yyyy");
                  birthDateController.text = formatter.format(dt);
                },
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Gender",
                    style: GoogleFonts.montserrat(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          contentPadding: EdgeInsets.zero,
                          groupValue: genderSelected,
                          activeColor: AppColors.whiteColor,
                          title: Text(
                            "Male",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: "Male",
                          onChanged: (value) {
                            setState(() {
                              genderSelected = value.toString();
                            });
                            print(genderSelected);
                          },
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          contentPadding: EdgeInsets.zero,
                          groupValue: genderSelected,
                          activeColor: AppColors.whiteColor,
                          title: Text(
                            "Female",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: "Female",
                          onChanged: (value) {
                            setState(() {
                              genderSelected = value.toString();
                            });
                            print(genderSelected);
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            button(
              text: 'Sign Up',
              onPressed: () {
                if (isValidate()) {
                  print("data is valid");
                }
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.montserrat(
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.montserrat(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  bool isValidate() {
    if (nameController.text.isEmpty) {
      showScaffold(context, "Please enter your Name");
      return false;
    }
    if (emailController.text.isEmpty) {
      showScaffold(context, "Please enter your Email");
      return false;
    }
    if (passwordController.text.isEmpty) {
      showScaffold(context, "Please enter your Password");
      return false;
    }
    if (birthDateController.text.isEmpty) {
      showScaffold(context, "Please enter your Birthdate");
      return false;
    }
    return true;
  }
}
