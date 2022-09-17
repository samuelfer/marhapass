import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/components/custom_header_expanded.dart';

import '../components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              //Header
              const CustomHeaderExpanded(),

              //Formulario
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Nome
                    const CustomTextFied(
                      icon: Icons.person,
                      label: 'Nome',
                    ),

                    //Email
                    const CustomTextFied(
                      icon: Icons.email,
                      label: 'Email',
                    ),

                    //Celular
                    const CustomTextFied(
                      icon: Icons.phone,
                      label: 'Celular',
                    ),

                    //Celular
                    const CustomTextFied(
                      icon: Icons.file_copy,
                      label: 'CPF',
                    ),

                    //Senha
                    const CustomTextFied(
                      icon: Icons.lock,
                      label: 'Senha',
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
                          backgroundColor: const Color.fromRGBO(63, 81, 126, 5),
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
        ),
      ),
    );
  }
}
