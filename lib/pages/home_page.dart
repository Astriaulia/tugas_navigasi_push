import "package:flutter/src/foundation/key.dart";
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                color: const Color.fromARGB(255, 2, 38, 68),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/astri.jpg")),
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Astri Aulia Fajriati",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 30,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        cursorHeight: 25,
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: "Cari Disini",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/user.png",
                            width: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Profile",
                              style: GoogleFonts.montserrat(fontSize: 9))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/google-docs.png",
                            width: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Document",
                              style: GoogleFonts.montserrat(fontSize: 9))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/credit-card.png",
                            width: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Payment",
                            style: GoogleFonts.montserrat(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/schedule.png",
                            width: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Jadwal",
                              style: GoogleFonts.montserrat(fontSize: 9))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/event.png",
                            width: 35,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Event",
                              style: GoogleFonts.montserrat(fontSize: 9))
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/qr.png",
                            width: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Code",
                            style: GoogleFonts.montserrat(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Update Informasi",
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
                width: double.infinity,
                height: 140,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Image.asset(
                              "assets/info.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 15,
                      child: SizedBox(
                        height: 30,
                        child: (Column(
                          children: [
                            Text(
                              "Tips And Trik",
                              style: GoogleFonts.montserrat(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                    )
                  ],
                )),
          ),
        ],
      )),
    );
  }
}
