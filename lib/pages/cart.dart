import 'package:flutter/material.dart';
import 'package:martapp/model/product.dart';
import 'package:martapp/pages/home.dart';

class CartPage extends StatefulWidget {
  final List<Product> cartList;
  CartPage(this.cartList);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(15),
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(fontSize: 20),
                      ),
                      Chip(
                        label: Text(
                          ' ${widget.cartList.length}',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .primaryTextTheme
                                  .headline6
                                  .color),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: cartList.length,
                      itemBuilder: (_, int i) {
                        return ListTile(
                          title: Text(cartList[i].name),
                          subtitle: Text(''),
                          trailing: InkWell(
                              onTap: () {
                                setState(() {
                                  cartList.remove(cartList[i]);
                                });
                              },
                              child: Icon(Icons.delete)),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
