import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/utils/appColors.dart';
import 'package:google_fonts/google_fonts.dart';

class button extends StatelessWidget {
  const button({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        child: MaterialButton(
          onPressed: () {},
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            constraints: BoxConstraints(
              maxHeight: 60,
            ),
            alignment: Alignment.center,
            child: Text(text,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ));
  }
}
