import 'package:flutter/material.dart';
import 'package:novia_web/landing_page/landingpage.dart';
// import 'package:novia_web/kotak/kotak_kanan.dart';
// import 'package:novia_web/kotak/kotak_kiri.dart';
// import 'package:novia_web/landing_page/landingpage.dart';
import 'package:novia_web/landing_page/pageprofile.dart';
import 'package:novia_web/landing_page/sosmed.dart';
// import 'package:novia_web/landing_page/landingpage.dart';
import 'package:novia_web/ui_widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      // title: Text(
      //   width.toString(),
      //   textScaleFactor: 1.5,
      // ),
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color.fromRGBO(251, 148, 218, 1), Color.fromRGBO(154, 144, 246, 1)],
                ),
              ),
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    Navbar(),
                    Tampilan(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                      child: Profile(),
                    ),
                    Center(child: Sosmed())
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
