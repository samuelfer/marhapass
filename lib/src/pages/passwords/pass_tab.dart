import 'package:flutter/material.dart';
import 'package:marhapass/src/config/custom_colors.dart';

class PasswordTab extends StatelessWidget {
  const PasswordTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.customColorPrimary,
        centerTitle: true,
        title: const Text.rich(
          style: TextStyle(fontSize: 30),
          TextSpan(
            children: [
              TextSpan(
                text: 'Minhas senhas',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Placeholder(
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Novo cadastro',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
