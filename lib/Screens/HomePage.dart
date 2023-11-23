import 'package:clnt_magazine/Colors.dart';
import 'package:clnt_magazine/Screens/SecondWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FirstWidget.dart';
import 'eventPage.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget _currentWidget = const FirstWidget();
  bool isPressed = true;
  bool isPressed2 = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 235, 38, 143),
              Color.fromARGB(255, 242, 90, 171),

            ])
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  isPressed = true;
                  isPressed2 = false;
                  _currentWidget = const FirstWidget();
                });
              },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 3.0,
                    color: Colors.white
                  ),


                  backgroundColor: isPressed ? tdVoilet : Colors.blue.withOpacity(0.0),


                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(25.0),

                    ),
                    //minimumSize: const Size(120,50)
                ), child:
                Text('Home',
                  style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ),
                // style: ButtonStyle(
                //   backgroundColor: Colors.pink
                // ),
              ),
            ),

            const SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  isPressed2 = true;
                  isPressed = false;

                  _currentWidget = const SecondWidget();
                });
              },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 3.0,
                    color: Colors.white
                  ),

                  backgroundColor: isPressed2 ? tdVoilet : Colors.blue.withOpacity(0.0) ,


                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    //minimumSize: Size(120,50)
                ), child:
                Text('Magazines',
                  style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
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
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(15.0),
        //     child: Icon(Icons.logout),
        //   )
        // ],

      ),


      drawer: Drawer(
        //backgroundColor: tdPink,

          child: ListView(
            children: [
               Container(
                 height: 164,
                 width: double.infinity,
                 color: tdLightblue,
                 child: Center(child: Image.asset('assets/images/logoSmall.png')),
               ),
              Container(
                height: 80,
                width: double.infinity,
                color: tdGold,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/Group 220.png'),
                    Text(
                      'Get Premium Membership',
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/accIcon.png'),
                      title: Text(
                        'LOGIN',
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Divider(),

                    Text(
                      'Features',
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SecondWidget()));
                      },
                      child: ListTile(
                        leading: Image.asset('assets/images/pdfIcon.png'),
                        title: Text(
                          'Magazines',
                          style: GoogleFonts.raleway(
                            textStyle: Theme.of(context).textTheme.displayMedium,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    ListTile(
                      leading: Image.asset('assets/images/notifIcon.png'),
                      title: Text(
                        'Notification',
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (

                          ){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) => eventPage()));
                      },
                      child: ListTile(
                        leading: Image.asset('assets/images/eventIcon.png'),
                        title: Text(
                          'Events',
                          style: GoogleFonts.raleway(
                            textStyle: Theme.of(context).textTheme.displayMedium,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                    Text(
                      'Information',
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/helpIcon.png'),
                      title: Text(
                        'Help',
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Scaffold(

                            body: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                
                                child: Center(
                                  child: Column(


                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Image.asset('assets/images/logoSmall.png'),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'Garmentline, today is unquestionably the leading B2B magazine of Garment Fashion Industry. Serving the industry for more than 20 years, Garmentline readership extends to over one Lakh Readymade Garment Wholesalers, Retailers, Agents and Distributors. Covering the whole Garment Fashion Industry of Mens Wear, Womens Wear and Kids Wear, We come up with Special issues of our magazine on above said segments, Entailing latest Trends, News, Event, Interviews of fashion industry experts. Besides we have Special Issue based on Regional Garment Trade Fairs like North India | South India Special issue. Also we have Special issue on Garment Manufacturing regions like, Jaipur Brand issue, Ahmedabad Issue, Surat issue, Mumbai issue etc. We are the number one choice for Wholesalers and Retailers for Garment Sourcing as we cover the brands from all over India. We are proud to have been the best alternative of B2B medium for Advertisement in garment industry.',
                                        style: GoogleFonts.raleway(
                                          textStyle: Theme.of(context).textTheme.displayMedium,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )));
                      },
                      child: ListTile(
                        leading: Image.asset('assets/images/infoIcon.png'),
                        title: Text(
                          'About Us',
                          style: GoogleFonts.raleway(
                            textStyle: Theme.of(context).textTheme.displayMedium,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/contacticon.png'),
                      title: Text(
                        'Contact Us',
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Divider(),
                    Text(
                      'Logout',
                      style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/accIcon.png'),
                      title: Text(
                        'Logout',
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                  ],
                ),
              )

            ],

        ),


      ),


      body: _currentWidget,


    );
  }
}
