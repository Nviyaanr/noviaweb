import 'package:flutter/material.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Welcome to Viya's Web",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'About Me',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'Find Me',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: const Text(
                    'Portofolio',
                    style: TextStyle(color: Colors.white),
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
