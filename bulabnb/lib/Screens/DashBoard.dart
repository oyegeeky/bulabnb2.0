import 'package:bulabnb/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              //color: Colors.pink,
              child: Image.asset("assets/images/otpSuccess.png",
                  fit: BoxFit.fill),
            ),

            Text(
                'Account Verified',
                textAlign: TextAlign.left,
                style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                )
            ),
            const SizedBox(height: 20,),
            Text(
                'Your account has been verified successfully.',
                textAlign: TextAlign.left,
                style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey
                )
            ),
            const SizedBox(height: 30,),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Get.to(() => const HomePage ());
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2196F3),
                      // shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(910.0),
                      ),
                      minimumSize: const Size(120,50)
                  ), child:
                  Text('Get Started',
                    style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),),
              ),
            ),

          ],
        )

    );
  }
}
