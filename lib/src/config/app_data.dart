import 'package:vendas/src/models/cart_item_model.dart';
import 'package:vendas/src/models/item_model.dart';
import 'package:vendas/src/models/order_model.dart';
import 'package:vendas/src/models/user_model.dart';

ItemModel item_1 = ItemModel(
  description: 'Item 1',
  imgUrl: 'assets/itens/arroz.png',
  itemName: 'Item 1',
  price: 5.5,
  unit: 'Kg',
);
ItemModel item_2 = ItemModel(
  description: 'Item 2',
  imgUrl: 'assets/itens/castanha.png',
  itemName: 'Item 2',
  price: 5.5,
  unit: 'un',
);
ItemModel item_3 = ItemModel(
  description: 'Item 3',
  imgUrl: 'assets/itens/farinha.png',
  itemName: 'Item 3',
  price: 5.5,
  unit: 'Kg',
);
ItemModel item_4 = ItemModel(
  description: 'Item 4',
  imgUrl: 'assets/itens/feijao.png',
  itemName: 'Item 4',
  price: 5.5,
  unit: 'Kg',
);
ItemModel item_5 = ItemModel(
  description: 'Item 5',
  imgUrl: 'assets/itens/lentilha.png',
  itemName: 'Item 5',
  price: 5.5,
  unit: 'Kg',
);
ItemModel item_6 = ItemModel(
  description: 'Item 6',
  imgUrl: 'assets/itens/milho.png',
  itemName: 'Item 6',
  price: 5.5,
  unit: 'Kg',
);

List<ItemModel> items = [
  item_1,
  item_2,
  item_3,
  item_4,
  item_5,
  item_6,
];

List<String> categories = [
  'Lista 1',
  'Lista 2',
  'Lista 3',
  'Lista 4',
  'Lista 5',
];
List<CartItemModel> cartItems = [
  CartItemModel(
    item: item_1,
    quantity: 1,
  ),
  CartItemModel(
    item: item_2,
    quantity: 1,
  ),
  CartItemModel(
    item: item_3,
    quantity: 2,
  ),
];

UserModel user = UserModel(
    name: 'carlos',
    email: 'carlos@gmail.com',
    phone: '99 9 9999-9999',
    cpf: '999.999.999-99',
    password: '');
List<OrderModel> orders = [
  OrderModel(
    copyAndPaste: 'gdgdgdgdgdg',
    createdDateTime: DateTime.parse(
      '2022-11-04 14:00:00.000',
    ),
    overdueDateTime: DateTime.parse(
      '2022-11-04 15:00:00.000',
    ),
    id: 'id',
    status: 'pending_payment',
    total: 11.0,
    items: [
      CartItemModel(
        item: item_1,
        quantity: 2,
      ),
      CartItemModel(
        item: item_2,
        quantity: 2,
      ),
    ],
  ),
   OrderModel(
    copyAndPaste: 'gdgdgdgdgdg',
    createdDateTime: DateTime.parse(
      '2022-11-04 14:00:00.000',
    ),
    overdueDateTime: DateTime.parse(
      '2022-11-04 15:00:00.000',
    ),
    id: 'id',
    status: 'pending_payment',
    total: 11.0,
    items: [
      CartItemModel(
        item: item_1,
        quantity: 2,
      ),
      CartItemModel(
        item: item_2,
        quantity: 2,
      ),
      CartItemModel(
        item: item_3,
        quantity: 5,
      ),
    ],
  ),
];
