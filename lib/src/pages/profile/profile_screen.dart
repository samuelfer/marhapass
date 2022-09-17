import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/components/custom_text_field.dart';
import 'package:marhapass/src/config/app_data.dart' as appData;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          //Email
          CustomTextFied(
            icon: Icons.email,
            label: 'Email',
          ),

          //Nome
          CustomTextFied(
            icon: Icons.person,
            label: 'Nome',
          ),

          //Celular
          CustomTextFied(
            icon: Icons.phone,
            label: 'Celular',
          ),

          //CPF
          CustomTextFied(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //Botao atualizar senha
        ],
      ),
    );
  }
}
