import 'package:flutter/material.dart';
// import 'package:novia_web/ui_widgets/navbar.dart';
// import 'package:flutter/rendering.dart';

class Profile extends StatelessWidget {
  double hitungEdan(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 40;
    } else {
      return 20 + (20 * (((lebarLayar - 200) / 800)));
    }
  }

  double hitungLagi(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 35;
    } else {
      return 20 + (15 * (((lebarLayar - 200) / 800)));
    }
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      // ignore: avoid_unnecessary_containers
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Novia Nuraeni Ramadhani',
                style: TextStyle(
                  fontSize: hitungEdan(width),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Hello everyone!! Let me introduce myself my name is Novia Nuraeni Ramadhani but you can call me Viya... I am 18 y.o and I am currently a semester 3 at Siliwangi University majoring in Informatics. My hobby is reading and watching movies ^___^',
                style: TextStyle(
                  fontSize: hitungLagi(width),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        width: 400,
        height: 400,
        color: Colors.transparent,
        // child: Image.asset('assets/images/images1.jpeg'),
        child: const CircleAvatar(
          foregroundImage: AssetImage('assets/images/images1.jpeg'),
        ),
      )

      // Image.asset(
      //   'assets/images/images1.jpeg',
      //   width: width,
      // ),
    ];
  }

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
