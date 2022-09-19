import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/components/custom_text_field.dart';
import 'package:marhapass/src/config/app_data.dart' as appData;

import '../components/custom_header_expanded.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  //Header
                  const CustomHeaderExpanded(title: 'Perfil'),

                  //Formulario
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //Email
                        CustomTextFied(
                          initialValue: appData.user.email,
                          icon: Icons.email,
                          label: 'Email',
                        ),

                        //Nome
                        CustomTextFied(
                          initialValue: appData.user.name,
                          icon: Icons.person,
                          label: 'Nome',
                        ),

                        //Celular
                        CustomTextFied(
                          initialValue: appData.user.phone,
                          icon: Icons.phone,
                          label: 'Celular',
                        ),

                        //CPF
                        CustomTextFied(
                          initialValue: appData.user.cpf,
                          icon: Icons.file_copy,
                          label: 'CPF',
                          isSecret: true,
                        ),

                        //Botao entrar
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              backgroundColor: Color.fromRGBO(63, 81, 126, 5),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Cadastrar",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //Botao de voltar
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
