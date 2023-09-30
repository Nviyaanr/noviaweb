import 'package:flutter/material.dart';

class Tampilan extends StatelessWidget {
  const Tampilan({super.key});

  double hitungEdan(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 45;
    } else {
      return 23 + (22 * (((lebarLayar - 200) / 800)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: 1000,
      height: width > 500 ? 500 : 400,
      color: Colors.transparent,
      margin: const EdgeInsets.only(top: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 20.0, 2.0, 30.0),
              child: Text(
                "Hi I'm Viya!\nI'm a student of Siliwangi University \nLet's get to know about me.",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    color: const Color.fromARGB(255, 191, 225, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: hitungEdan(width)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.transparent,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                          size: 30.0,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
