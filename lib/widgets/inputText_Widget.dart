import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/utils/appColors.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFiend extends StatelessWidget {
  const InputFiend(
      {super.key, required this.controller, required this.hintText, required this.icon});

  final TextEditingController controller;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        controller: controller,
        style: GoogleFonts.montserrat(
          color: AppColors.whiteColor
        ),
        textAlign: TextAlign.center,
        cursorColor: AppColors.whiteColor,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            icon, 
            color: AppColors.whiteColor,
            size: 25,),
            focusColor: AppColors.whiteColor,
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat()
        ),

      ),
    );
  }
}
