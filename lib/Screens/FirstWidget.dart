import 'package:clnt_magazine/Colors.dart';
import 'package:clnt_magazine/Screens/LoginScreen.dart';
import 'package:clnt_magazine/Widgets/mag2cstm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //HomePage magazines ScrollView Asset links
                Column(
                  children: [

                    mag2cstm(
                      text: 'assets/images/cov01.png',
                    ),

                    mag2cstm(
                      text: 'assets/images/cov02.png',
                    ),

                    mag2cstm(
                      text: 'assets/images/cov03.png',
                    ),

                    mag2cstm(
                      text: 'assets/images/cov04.png',
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
