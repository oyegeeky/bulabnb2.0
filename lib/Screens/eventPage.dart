import 'package:clnt_magazine/Screens/HomePage.dart';
import 'package:clnt_magazine/Screens/allIndiaFares.dart';
import 'package:flutter/material.dart';
import 'package:clnt_magazine/Colors.dart';
import 'package:clnt_magazine/Screens/SecondWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FirstWidget.dart';
import 'eventPage.dart';
import 'norIndiaFareWid.dart';

class eventPage extends StatefulWidget {
  const eventPage({super.key});

  @override
  State<eventPage> createState() => _eventPageState();
}

class _eventPageState extends State<eventPage> {
  Widget _currentWidget =  allIndiaFareWid();

  bool isPressed = true;
  bool isPressed2 = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue.shade50,

        appBar: AppBar(
        toolbarHeight: 100,
          flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 228, 31, 176),
              Color.fromARGB(255, 254, 60, 203),

            ])
        ),
      ),

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 60,
            width: 120,
            child: ElevatedButton(onPressed: (){
              setState(() {
                isPressed = true;
                isPressed2 = false;
                _currentWidget = norIndiaFareWid();
              });
            },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                    width: 3.0,
                    color: Colors.white
                ),


                backgroundColor: isPressed ? tdVoilet : Colors.blue.withOpacity(0.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),

                ),
                //minimumSize: const Size(120,50)
              ), child:
              Text('North India Fares',
                style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              // style: ButtonStyle(
              //   backgroundColor: Colors.pink
              // ),
            ),
          ),

          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 60,
            width: 120,
            child: ElevatedButton(onPressed: (){
              setState(() {
                isPressed2 = true;
                isPressed = false;

                _currentWidget = const allIndiaFareWid();
              });
            },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                    width: 3.0,
                    color: Colors.white
                ),

                backgroundColor: isPressed2 ? tdVoilet : Colors.blue.withOpacity(0.0) ,


                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                //minimumSize: Size(120,50)
              ), child:
              Text('All India Winter Fares',
                style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              // style: ButtonStyle(
              //   backgroundColor: Colors.pink
              // ),
            ),
          ),
        ],
      ),

          leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
          );
        },
      ),
      actions: [
      ],

    ),
      body: _currentWidget
    );
  }
}
