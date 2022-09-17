import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:snippet_coder_utils/hex_color.dart';

class CustomHeaderExpanded extends StatelessWidget {
  const CustomHeaderExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor("#3f517e"),
              HexColor("#182545"),
            ],
          ),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(150),
          ),
        ),

        //Nome do app
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: "Marha",
                    ),
                  ]),
            ),
            Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  children: [
                    TextSpan(
                      text: "App",
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
