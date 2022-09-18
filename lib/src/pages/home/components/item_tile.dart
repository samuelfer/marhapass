import 'package:flutter/material.dart';
import 'package:marhapass/src/models/item_model.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  const ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: Image.asset(item.image),
            ),

            //Nome
            Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            //Preco - unidade
            Text(
              item.description,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
