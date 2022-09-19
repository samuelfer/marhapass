import 'package:flutter/material.dart';
import 'package:marhapass/src/config/password_item_model.dart';

import '../../../config/custom_colors.dart';

class PassTile extends StatelessWidget {
  final PasswordItemModel passItem;

  const PassTile({
    super.key,
    required this.passItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: ListTile(
        //imagem
        leading: Image.asset(
          passItem.item.image,
          height: 60,
          width: 60,
        ),

        //Titulo
        title: Text(
          passItem.item.itemName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: CustomColors.customColorPrimary,
          ),
        ),

        //Senha
        subtitle: const Text(
          'Senha',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),

        //Botao
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.visibility_off,
            color: CustomColors.customColorPrimary,
          ),
        ),
      ),
    );
  }
}
