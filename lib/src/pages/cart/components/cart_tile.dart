import 'package:flutter/material.dart';
import 'package:vendas/src/config/custom_colors.dart';
import 'package:vendas/src/models/cart_item_model.dart';
import 'package:vendas/src/pages/common_widgets/quantity_widget.dart';
import 'package:vendas/src/services/utils_services.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;
final Function (CartItemModel) remove;

  const CartTile({
    Key? key,
    required this.cartItem,
    required this.remove,
  }) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        //imagem image

        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        //titulo title

        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        //total

        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totasPrice()),
          style: TextStyle(
            color: CustomColors.customContrastColor,
            fontWeight: FontWeight.bold,
          ),
        ),

        //quantidade quantity

        trailing: QuantityWidget(
          suffixText: widget.cartItem.item.unit,
          value: widget.cartItem.quantity,
          result: (quantity) {
            setState(() {
              widget.cartItem.quantity = quantity;
              if(quantity == 0){
                //remover item do carrinho remove item from cart

                widget.remove(widget.cartItem);
              }

            });
          },
          isRemovable: true,
        ),
      ),
    );
  }
}
