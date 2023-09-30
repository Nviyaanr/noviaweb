import 'package:flutter/material.dart';

class KotakKanan extends StatelessWidget {
  const KotakKanan({
    super.key,
  });

  double hitungSize(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 17;
    } else if (lebarLayar < 1200 && lebarLayar > 800) {
      return 14;
    } else {
      return 12;
    }
  }

  // void name(params) {}
  double hitungEdan(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 40;
    } else {
      return 25 + (15 * (((lebarLayar - 200) / 1000)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: 500,
      height: 500,
      color: Colors.transparent,
      padding: const EdgeInsets.all(5),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween
        children: [
          const SizedBox(
            height: 70,
          ),
          Text(
            'Novia Nuraeni Ramadhani',
            // textScaleFactor: 1.5,
            style: TextStyle(fontSize: hitungEdan(width)),
          ),
          // Spacer(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Hello everyone!! let me introduce myself my name is Novia Nuraeni Ramadhani but you can call me viya... I am 18 y.o and i am a 2nd student in Informatics at Siliwangi University. My hobby is reading and watching movies ^___^',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: hitungSize(width)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              height: 50,
              width: 500,
              color: Colors.transparent,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: width > 850 ? MainAxisAlignment.end : MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(right: 10),
                      child: IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.transparent,
                    margin: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.all_inbox),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.transparent,
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
                    // margin: const EdgeInsets.only(right: 10),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
