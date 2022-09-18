import 'dart:html';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:marhapass/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          style: const TextStyle(fontSize: 30),
          TextSpan(
            children: [
              TextSpan(
                text: 'Marha',
                style: TextStyle(
                  color: CustomColors.customColorPrimary,
                ),
              ),
              const TextSpan(
                text: 'App',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),

        //Icone de total
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: Colors.green,
                badgeContent: const Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                child: const Icon(
                  Icons.account_box_outlined,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          //campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquisar...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: CustomColors.customColorPrimary,
                  size: 21,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          )

          //Categorias

          //Grid
        ],
      ),
    );
  }
}