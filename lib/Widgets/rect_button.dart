import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rect_button extends StatelessWidget {

  final String btnName;
  final Image? icon;
  // final Color? bgColor;
  final VoidCallback? callback ;

  const rect_button({super.key,
    this.callback,
    // this.bgColor = Colors.blue,
    required this.btnName,
    required this.icon});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      // width: 150,
      child: ElevatedButton(
        onPressed: () {
          callback!();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // height: 20,
                width: 20,
                child: icon ),
            const SizedBox(

                width: 15
            ),

            Text(
              btnName,
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),

          ],

        ),
      ),
    );
  }
}