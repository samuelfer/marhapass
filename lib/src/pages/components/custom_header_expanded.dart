import 'package:flutter/material.dart';
import 'package:marhapass/src/config/custom_colors.dart';

class CustomHeaderExpanded extends StatelessWidget {
  const CustomHeaderExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              CustomColors.customSwatchColorDark,
              CustomColors.customSwatchColorLight,
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
                  TextSpan(
                    text: "App",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
