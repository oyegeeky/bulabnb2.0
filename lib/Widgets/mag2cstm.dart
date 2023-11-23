import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';

class mag2cstm extends StatelessWidget {
  //Image? magImage;
  String text;
  mag2cstm({required this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 221.81,
          height: 275,
          //color: tdPink,
          child: Image.asset(text,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'February 2023',
          style: GoogleFonts.raleway(
              textStyle: Theme.of(context).textTheme.displayMedium,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        )


      ],
    );
  }
}
