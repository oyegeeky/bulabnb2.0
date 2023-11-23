import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';

class mag1cstm extends StatelessWidget {

  late final Image? magImage;
  String text;
  // final Color? bgColor;
  late final VoidCallback? callback ;
  mag1cstm({super.key, required this.text});




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          //child: magImage,
          color: tdPink,
          width: 205,
          height: 205 ,
          child: Image.asset(text,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'July 2023',
          style: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        ),

      ],

    );
  }
}