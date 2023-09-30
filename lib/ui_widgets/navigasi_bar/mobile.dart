import 'package:flutter/material.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      // ignore: avoid_unnecessary_containers
      child: Container(
        // constraints: const BoxConstraints(maxWidth: 800),
        child: Column(
          children: [
            const Text(
              "Viya's Web",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: width > 850 ? MainAxisAlignment.end : MainAxisAlignment.center,
                children: const [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'About Me',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Find Me',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
