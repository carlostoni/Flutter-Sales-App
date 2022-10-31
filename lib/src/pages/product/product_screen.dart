import 'package:flutter/material.dart';
import 'package:vendas/src/models/item_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(240),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(item.imgUrl),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: const Offset(0, 2),
                  ),
                ]),
          ))
        ],
      ),
    );
  }
}
