import 'package:flutter/material.dart';
import 'package:marhapass/src/config/custom_colors.dart';
import 'package:marhapass/src/models/item_model.dart';

class CertificateScreen extends StatelessWidget {
  final ItemModel item;

  const CertificateScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Conteudo
          Column(children: [
            Expanded(
              //Add animacao na imagem
              child: Hero(
                tag: item.image,
                child: Image.asset(item.image),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Nome
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.itemName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: const [
                              Text(
                                "Instituíção",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Instituíção"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //Descricao
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SingleChildScrollView(
                          //Adiciona rolagem na descricao
                          child: Text(
                            item.description,
                            style: const TextStyle(
                              height: 1.5, //espacamento entre as linhas
                              fontSize: 12,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Botao
                    SizedBox(
                      height: 40,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        label: const Text('Visualizar certificado'),
                        icon: const Icon(
                          Icons.visibility_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),

          //Botao de voltar
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: CustomColors.customColorPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
