import 'package:flutter/material.dart';

class KotakKiri extends StatelessWidget {
  const KotakKiri({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.transparent,
      // child: Image.asset('assets/images/images1.jpeg'),
      child: const CircleAvatar(
        foregroundImage: AssetImage('assets/images/images1.jpeg'),
      ),
    );
  }
}
