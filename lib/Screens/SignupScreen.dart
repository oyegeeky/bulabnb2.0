import 'package:clnt_magazine/Screens/HomePage.dart';
import 'package:clnt_magazine/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';
import 'LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var fullName = TextEditingController();

  var companyName = TextEditingController();

  var phoneNumber = TextEditingController();


  @override
  Widget build(BuildContext context) {
    phoneNumber.selection = TextSelection.fromPosition((TextPosition(
        offset: phoneNumber.text.length
    )));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 200,
                //color: tdPink,
                child: Image.asset('assets/images/abstract01.png',
                    fit: BoxFit.fill)
            ),

            Stack(
              children: [
                Container(
                  height: 509,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15
                  ),
                  //color: tdPink,
                  child: Column(
                    children: [
                      //welcomeBackText
                      Text(
                          'Welcome back',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: tdPink
                          )
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //toGarmentLineText
                      Text(
                          'to GARMENTLINE!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black
                          )
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                       //'Enter Full Name',
                       SizedBox(
                        height: 60, // Increase the height of the SizedBox
                        child: TextField(
                          controller:  fullName,

                          style: const TextStyle(
                            fontSize: 20, // Adjust the font size
                          ),
                          decoration:   const InputDecoration(
                            prefixIcon: Icon(Icons.account_circle_rounded, color: Colors.pinkAccent),
                            contentPadding: EdgeInsets.all(15), // Adjust the content padding
                            hintText: 'Enter Full Name',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)), // Adjust border radius
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)), // Adjust border radius
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                       SizedBox(
                        height: 60, // Increase the height of the SizedBox
                        child: TextField(
                          controller:  companyName,

                          style: const TextStyle(
                            fontSize: 20, // Adjust the font size
                          ),
                          decoration: const InputDecoration(

                            contentPadding: EdgeInsets.all(15), // Adjust the content padding
                            hintText: 'Enter Company Name',
                            prefixIcon: Icon(Icons.business_center_rounded, color: Colors.pinkAccent),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)), // Adjust border radius
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)), // Adjust border radius
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFA5A5A5),),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                        SizedBox(
                        height: 60, // Increase the height of the SizedBox
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              phoneNumber.text = value;
                            });
                          },

                          controller:  phoneNumber,
                          keyboardType: TextInputType.number,

                          style: const TextStyle(
                            fontSize: 20, // Adjust the font size
                          ),
                          decoration:  InputDecoration(
                            prefixIcon: const Icon(Icons.phone, color: Colors.pinkAccent),
                            suffixIcon: phoneNumber.text.length>9 ? const Icon(Icons.done_all_outlined, color: Colors.green): null,
                            contentPadding: const EdgeInsets.all(15), // Adjust the content padding
                            hintText: 'Enter Mobile Number',
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)), // Adjust border radius
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)), // Adjust border radius
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //         'Forgot Password ?',
                      //         //textAlign: TextAlign.center,
                      //         style: GoogleFonts.raleway(
                      //             textStyle: Theme.of(context).textTheme.displayMedium,
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w400,
                      //             color: Colors.black
                      //         )
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          =>  const HomePage() ) );
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tdPink,
                              // shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(910.0),
                              ),
                              minimumSize: const Size(120,50)
                          ), child:
                          Text('SEND OTP',
                            style: GoogleFonts.raleway(
                                textStyle: Theme.of(context).textTheme.displayMedium,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                          // style: ButtonStyle(
                          //   backgroundColor: Colors.pink
                          // ),
                        ),
                      ),

                      const SizedBox(
                        height: 64,
                      ),

                  Text(
                            'Made with ❤️ in India ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: Theme.of(context).textTheme.displayMedium,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey
                            )
                        ),

                      // const SizedBox(
                      //   height: 32,
                      // ),
                      // Image.asset('assets/images/signup_tab.png'),
                      // const SizedBox(
                      //   height: 16,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     InkWell(
                      //       child: Stack(
                      //         children: [
                      //           Container(
                      //             width: 151,
                      //             height: 50,
                      //             // color: tdPink,
                      //             padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 11),
                      //             decoration: ShapeDecoration(
                      //               color: Colors.white,
                      //               shape: RoundedRectangleBorder(
                      //                 side: const BorderSide(width: 0.50),
                      //                 borderRadius: BorderRadius.circular(10),
                      //               ),
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: 151,
                      //             height: 50,
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.center,
                      //               //crossAxisAlignment: CrossAxisAlignment.center,
                      //               children: [
                      //                 Image.asset('assets/images/google.png'),
                      //                 const SizedBox(
                      //                   width: 5,
                      //                 ),
                      //                 Text(
                      //                     'Google',
                      //                     textAlign: TextAlign.center,
                      //                     style: GoogleFonts.inter(
                      //                         textStyle: Theme.of(context).textTheme.displayMedium,
                      //                         fontSize: 18,
                      //                         fontWeight: FontWeight.w400,
                      //                         color: Colors.black
                      //                     )
                      //                 ),
                      //
                      //               ],
                      //             ),
                      //           )
                      //         ],
                      //
                      //       ),
                      //     ),
                      //     InkWell(
                      //       child: Stack(
                      //         children: [
                      //           Container(
                      //             width: 151,
                      //             height: 50,
                      //             // color: tdPink,
                      //             padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 11),
                      //             decoration: ShapeDecoration(
                      //               color: Colors.white,
                      //               shape: RoundedRectangleBorder(
                      //                 side: const BorderSide(width: 0.50),
                      //                 borderRadius: BorderRadius.circular(10),
                      //               ),
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: 151,
                      //             height: 50,
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.center,
                      //               //crossAxisAlignment: CrossAxisAlignment.center,
                      //               children: [
                      //                 Image.asset('assets/images/apple.png'),
                      //                 const SizedBox(
                      //                   width: 5,
                      //                 ),
                      //                 Text(
                      //                     'Apple',
                      //                     textAlign: TextAlign.center,
                      //                     style: GoogleFonts.inter(
                      //                         textStyle: Theme.of(context).textTheme.displayMedium,
                      //                         fontSize: 18,
                      //                         fontWeight: FontWeight.w400,
                      //                         color: Colors.black
                      //                     )
                      //                 ),
                      //
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //
                      //       ),
                      //     ),
                      //
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 16,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //         'Do not have an account ? ',
                      //         textAlign: TextAlign.center,
                      //         style: GoogleFonts.raleway(
                      //             textStyle: Theme.of(context).textTheme.displayMedium,
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w400,
                      //             color: Colors.black
                      //         )
                      //     ),
                      //     InkWell(
                      //       onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)
                      //       => const LoginScreen() )),
                      //       child: Text(
                      //           'Sign Up ',
                      //           textAlign: TextAlign.center,
                      //           style: GoogleFonts.raleway(
                      //               textStyle: Theme.of(context).textTheme.displayMedium,
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.w600,
                      //               color: tdPink
                      //           )
                      //       ),
                      //     ),
                      //
                      //   ],
                      // )



                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
