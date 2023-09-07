import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/utils/appColors.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(height: 50,),
           
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                controller: emailController,
                style: GoogleFonts.montserrat(
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.center,
                cursorColor: AppColors.whiteColor,
                decoration:  InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.email, color: AppColors.whiteColor, size: 25,
                  ),
                  focusColor: AppColors.whiteColor,
                  hintText: "Please enter your name",
                  hintStyle:GoogleFonts.montserrat(
                    fontSize: 12,
                    color: AppColors.greyColor
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.whiteColor
                    ),
                    
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.whiteColor
                    )
                  ),
                  contentPadding: const EdgeInsets.only(top: 15)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
