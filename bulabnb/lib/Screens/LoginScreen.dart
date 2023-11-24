import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/signup_controllers.dart';
import 'otpScreen.dart';


class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    var phoneNumber = TextEditingController();


    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Container(
              width: double.infinity,
              height: 180,
              //color: Colors.pink,
              child: Image.asset("assets/images/LoginScreenIMG01.png",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [

                          //welcomeBackText
                          Text(
                              'Welcome back',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.raleway(
                                  textStyle: Theme.of(context).textTheme.displayMedium,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF2196F3)
                              )
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //toGarmentLineText
                          Text(
                              'Get Started Now!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.raleway(
                                  textStyle: Theme.of(context).textTheme.displayMedium,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              )
                          ),
                          const SizedBox(
                            height: 62,
                          ),

                          SizedBox(
                            height: 60,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 20, // Adjust the font size
                              ),

                              controller: controller.phoneNo,
                              decoration: const InputDecoration(
                                //prefixIcon: Icon(Icons.phone, color: Color(0xFF2196F3)),
                                //suffixIcon: phoneNumber.text.length>9 ? const Icon(Icons.done_all_outlined, color: Colors.green): null,
                                contentPadding: EdgeInsets.all(15), // Adjust the content padding
                                hintText: 'Email or Mobile number',
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
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phoneNumber';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),



                          //'Enter Full Name',
                          const SizedBox(
                            height: 60, // Increase the height of the SizedBox
                            child: TextField(

                              obscureText : true,
                              style: TextStyle(
                                fontSize: 20, // Adjust the font size
                              ),
                              decoration:   InputDecoration(
                                suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Color(
                                    0xFF8E8D8D)),
                                contentPadding: EdgeInsets.all(15), // Adjust the content padding
                                hintText: 'Password',
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
                            height: 12,
                          ),

                          const SizedBox(
                            height: 60, // Increase the height of the SizedBox
                            child: TextField(
                              obscureText : true,
                              //controller:  companyName,

                              style: TextStyle(
                                fontSize: 20,
                                // Adjust the font size
                              ),
                              decoration: InputDecoration(


                                contentPadding: EdgeInsets.all(15), // Adjust the content padding
                                hintText: 'Confirm Password',
                                suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Color(
                                    0xFF8E8D8D)),

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
                            height: 20,
                          ),


                          SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Implement login logic here
                                //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                                // Process the login with email and password

                                SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim()) ;
                                Get.to(() => const OTPScreen());}
                            },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2196F3),
                                  // shadowColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(910.0),
                                  ),
                                  minimumSize: const Size(120,50)
                              ), child:
                              Text('Sign Up',
                                style: GoogleFonts.raleway(
                                    textStyle: Theme.of(context).textTheme.displayMedium,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 32,
                          ),

                          Container(
                            width: 300,
                            height:110,
                            //color: Colors.pink,
                            child: Image.asset("assets/images/dummy.png",
                                fit: BoxFit.fill),
                          ),

                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}