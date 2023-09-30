import 'package:flutter/material.dart';
// import 'package:novia_web/kotak/kotak_kanan.dart';
// import 'package:novia_web/kotak/kotak_kiri.dart';
import 'package:novia_web/ui_widgets/navbar.dart';
// import 'package:novia_web/landing_page/landingpage.dart';
import 'package:novia_web/ui_widgets/navigasi_bar/desktop.dart';

class Horizontal extends StatelessWidget {
  const Horizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Navbar(),
        DesktopNavbar(),
        // KotakKanan(),
        // KotakKiri(),
      ],
    );
  }
}
