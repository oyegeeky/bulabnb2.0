import 'package:bulabnb/Controllers/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginScreen.dart';
import 'otpScreen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  //color: Colors.pink,
                  child: Image.asset("assets/images/LOGO.gif",
                      fit: BoxFit.contain),
                ),
              ),
                onTap: (){Get.to(() =>  LoginScreen());},


            ),
            SizedBox(height: 200,)

          ],
        )
    );
  }
}