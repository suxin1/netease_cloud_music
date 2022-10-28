import 'package:flutter/material.dart';
import '../model/cart_item.dart';
import '../widgets/cart_page.dart';
import './cart_provider.dart';

class BlocCartPage extends StatelessWidget {
  BlocCartPage();

  static const routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    final cart = CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: StreamBuilder<List<CartItem>>(
          stream: cart.items,
          builder: (context, snapshot) {
            if (snapshot.data?.isEmpty ?? true) {
              return Center(
                  child: Text('Empty',
                      style: Theme.of(context).textTheme.displaySmall));
            }

            return ListView(
                children:
                    snapshot.data!.map((item) => ItemTile(item: item)).toList());
          }),
    );
  }
}
