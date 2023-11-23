import 'package:clnt_magazine/Colors.dart';
import 'package:clnt_magazine/Screens/HomePage.dart';
import 'package:clnt_magazine/Screens/LoginScreen.dart';
import 'package:clnt_magazine/Widgets/mag1cstm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Stack(
                  alignment: Alignment.center,
                  children:   [
                    Container(
                      height: 56,
                      width: 326,

                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(11.0)),
                        color: tdPink,



                      ),
                    ),
                    Text(
                      '2023 Magazines',
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),

                  ],
                ),
              ),


              const SizedBox(
                height:25 ,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [



                    mag1cstm(
                      text: 'assets/images/cov01.png',
                    ),
                    const SizedBox(width: 20),
                    mag1cstm(
                      text: 'assets/images/cov03.png',
                    ),
                    const SizedBox(width: 20),
                    mag1cstm(
                      text: 'assets/images/cov02.png',
                    ),
                    const SizedBox(width: 20),
                    mag1cstm(
                      text: 'assets/images/cov04.png',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80),

              SizedBox(
                child: Stack(
                  alignment: Alignment.center,
                  children:   [
                    Container(
                      height: 56,
                      width: 326,

                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(11.0)),
                        color: tdPink,



                      ),
                    ),
                    Text(
                      '2022 Magazines',
                      style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(
                height:25 ,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    mag1cstm(
                      text: 'assets/images/cov04.png',
                    ),
                    const SizedBox(width: 20),
                    mag1cstm(
                      text: 'assets/images/cov03.png',
                    ),
                    const SizedBox(width: 20),
                    mag1cstm(
                      text: 'assets/images/cov02.png',
                    ),
                    const SizedBox(width: 20),
                    mag1cstm(
                      text: 'assets/images/cov02.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
