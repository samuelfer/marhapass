import 'package:flutter/material.dart';
import 'package:marhapass/src/config/custom_colors.dart';

class CustomHeaderExpanded extends StatefulWidget {
  final String title;
  const CustomHeaderExpanded({
    super.key,
    this.title = '',
  });

  @override
  State<CustomHeaderExpanded> createState() => _CustomHeaderExpandedState();
}

class _CustomHeaderExpandedState extends State<CustomHeaderExpanded> {
  String subtitle = '';
  @override
  void initState() {
    super.initState();
    subtitle = widget.title;
  }

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
          children: [
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: 'Marha',
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
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
