import 'package:flutter/material.dart';

class Sosmed extends StatelessWidget {
  const Sosmed({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        height: 50,
        width: 500,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email,
                          color: Colors.white60,
                        )),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.telegram,
                      color: Colors.white60,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.transparent,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo,
                        color: Colors.white60,
                      )),
                )
              ]),
        ));
  }
}
