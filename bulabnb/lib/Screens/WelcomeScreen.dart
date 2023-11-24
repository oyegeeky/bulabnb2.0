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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              child: Center(
                child: Container(
                  width: 180,
                  height: 50,
                  //color: Colors.pink,
                  child: Image.asset("assets/images/LOGO.png",
                      fit: BoxFit.fill),
                ),
              ),
                onTap: (){Get.to(() =>  LoginScreen());},


            ),
            SizedBox(height: 180,),
            Container(
              width: double.infinity,
              height: 200,
              //color: Colors.pink,
              child: Image.asset("assets/images/SSCREEN02.png",
                  fit: BoxFit.fill),
            )

          ],
        )
    );
  }
}