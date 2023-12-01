import 'package:bulabnb/Controllers/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Controllers/otpController.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var otp ;
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 120,),
          Text(
              'Enter Verification\nCode                         ',
              textAlign: TextAlign.left,
              style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              )
          ),
          SizedBox(height: 12,),
          Text(
              'Enter code that we have sent to your mobile\nnumber',
              textAlign: TextAlign.left,
              style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
              )
          ),

          SizedBox(height: 30,),

          OtpTextField(
              numberOfFields: 6 ,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.phone,

              onSubmit: (code){
                otp = code ;
                // OTPController.instance.verifyOTP(otp);
                OTPController.instance.verifyOTP(otp);
              }
          ),SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                OTPController.instance.verifyOTP(otp);
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: tdRed,
                  // shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(910.0),
                  ),
                  minimumSize: const Size(120,50)
              ), child:
              Text('Submit',
                style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize:16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),),
            ),
          )

        ],
      ),
    );
  }
}
