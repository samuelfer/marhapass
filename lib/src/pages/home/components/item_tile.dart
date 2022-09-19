import 'package:flutter/material.dart';
import 'package:marhapass/src/models/item_model.dart';
import 'package:marhapass/src/pages/certificates/certificate_detail.screen.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  const ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    //Navegar para o detalhe
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CertificateScreen(item: item);
            },
          ),
        );
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Imagem
              Expanded(
                //Add animacao na imagem
                child: Hero(
                  tag: item.image,
                  child: Image.asset(item.image),
                ),
              ),

              //Nome
              Text(
                item.itemName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //Titulo
              Text(
                item.title,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
