import 'package:flutter/material.dart';
import 'package:marhapass/src/config/custom_colors.dart';
import 'package:marhapass/src/config/app_data.dart' as appData;
import 'package:marhapass/src/pages/home/home_tab.dart';

import '../auth/sign_up_screen.dart';
import 'components/pass_tile.dart';

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
          Expanded(
            child: ListView.builder(
              itemCount: appData.passwordItems.length,
              itemBuilder: (_, index) {
                return PassTile(passItem: appData.passwordItems[index]);
              },
            ),
          ),

          //Botao cadastrar novo
          SizedBox(
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                backgroundColor: const Color.fromRGBO(63, 81, 126, 5),
              ),
              onPressed: () {},
              child: const Text(
                "Novo Cadastro",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
