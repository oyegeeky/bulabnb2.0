import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';
import '../Widgets/mag2cstm.dart';

class norIndiaFareWid extends StatelessWidget {
  const norIndiaFareWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: tdVoilet,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Date',
                  style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: tdGold
                  ),
                  textAlign: TextAlign.center,
                ),
                Text('Fare Name',
                  style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: tdGold
                  ),
                  textAlign: TextAlign.center,
                ),
                Text('Venue',
                  style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: tdGold
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('18-21\nJuly',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('CMAI',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('NESCO,JIO\nCONVENTION,\nMumbai',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('26-27\nJune',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('TEXTILE\nUTSAV\n(SURAT DREAMS)',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('SIECC\nSarsana,Surat',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('26-27\nJune',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('TEXTILE\nUTSAV\n(SURAT DREAMS)',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('SIECC\nSarsana,Surat',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('26-27\nJune',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('TEXTILE\nUTSAV\n(SURAT DREAMS)',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('SIECC\nSarsana,Surat',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('26-27\nJune',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('TEXTILE\nUTSAV\n(SURAT DREAMS)',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('SIECC\nSarsana,Surat',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('26-27\nJune',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('TEXTILE\nUTSAV\n(SURAT DREAMS)',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('SIECC\nSarsana,Surat',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    height: 75,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('11-13\nJuly',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('KIA',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text('SIECC\nSarsana,Surat',
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: tdVoilet
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                ],
              ),
            ),
          )













        ],
      ),
    );
  }
}
