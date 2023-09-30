import 'package:flutter/material.dart';
// import 'package:novia_web/kotak/kotak_kanan.dart';
// import 'package:novia_web/kotak/kotak_kiri.dart';
import 'package:novia_web/ui_widgets/navbar.dart';
import 'package:novia_web/ui_widgets/navigasi_bar/mobile.dart';

// import '../kotak/kotak_kanan.dart';
// import '../kotak/kotak_kiri.dart';

class Vertikal extends StatelessWidget {
  const Vertikal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Navbar(),
          MobileNavbar(),
        ],
      ),
    );
  }
}
