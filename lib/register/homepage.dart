import 'package:book_store/constant/color.dart';
import 'package:book_store/register/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              "assets/images/book2.png",
              height: 300,
              width: 300,
            ),
            Spacer(),
            Text(
              "Welcome to Book Store",
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
            Text(
              "accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at",
              style: GoogleFonts.poppins(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Or login via social media",
                    style: primaryFont,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: primaryColor)),
                        child: Image.asset(
                          "assets/icons/facebook.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 2, color: primaryColor)),
                          child: Image.asset(
                            "assets/icons/google.png",
                            width: 25,
                            height: 25,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
