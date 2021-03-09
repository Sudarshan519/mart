import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:martapp/model/cagtegory.dart';
import 'package:martapp/model/cart.dart';
import 'package:martapp/model/product.dart';
import 'package:martapp/pages/cart.dart';
import 'package:martapp/pages/product_detail.dart';
import 'package:martapp/pages/searchbar.dart';

TextStyle style = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal);
List<Product> cartList = [];

class Home extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  Home(this.scaffoldKey);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  widget.scaffoldKey.currentState.openDrawer();
                  //  widget.scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('HEll')));
                }),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  showSearch(context: context, delegate: DataSearch(listWords));
                },
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            print('search tapped');
                          }),
                      labelStyle: style,
                      labelText: 'What are you looking for?'),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return CartPage(cartList);
                }));
              },
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        Text(
          'Categories',
          style: style,
        ),
        Container(
          //    height: 210,
          child: Wrap(children: [
            ...category
                .map((p) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                              color: Colors.white,
                              child: Icon(
                                Icons.dashboard,
                                size: 70,
                              )),
                          Text(p.categoryName),
                        ],
                      ),
                    ))
                .toList()
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Latest Products',
              textAlign: TextAlign.start,
              style: style,
            ),
            Spacer(),
            Text(
              'View All',
              style: style.copyWith(color: Colors.red),
            ),
          ],
        ),
        Container(
          height: 260,
          //  color: Colors.green,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (_, int i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Products(
                    product: product[i],
                  ),
                );
              }),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Top Products',
              textAlign: TextAlign.start,
              style: style,
            ),
            Spacer(),
            Text(
              'View All',
              style: style.copyWith(color: Colors.red),
            ),
          ],
        ),
        Container(
          height: 260,
          //  color: Colors.green,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topProduct.length,
              itemBuilder: (_, int i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (_) {
                        //   return ProductDetail(topProduct[i]);
                        // }));
                      },
                      child: Products(product: topProduct[i])),
                );
              }),
        ),
      ]),
    ));
  }
}

class Products extends StatefulWidget {
  final Product product;

  const Products({Key key, this.product}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int productCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 120,
              width: 200,
              //   width: double.infinity,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ProductDetail(widget.product);
                      }));
                    },
                    child: Icon(
                      Icons.pool_rounded,
                      size: 90,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        widget.product.isSale
                            ? CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Text('Sale'),
                              )
                            : Text(''),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text(widget.product.discount.toString()),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Almonds'),
            Text('Nrs.200', style: style.copyWith(color: Colors.red)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Qty'),
                SizedBox(
                  width: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: InkWell(
                        onTap: () {
                          if (cartList.contains(widget.product))
                            cartList.remove(widget.product);
                          countItem(widget.product);
                        },
                        child: Icon(Icons.remove))),
                Text('${productCount}'),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: InkWell(
                        onTap: () {
                          // if (cartList.contains(product)) {
                          //   //  cartList.;

                          // }
                          cartList.add(widget.product);
                          countItem(widget.product);
                        },
                        child: Icon(Icons.add))),
              ],
            ),
            Text(
              'Price(Mrps):100',
              style: style.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ));
  }

  countItem(p) {
    var map = Map();

    cartList.forEach((p) {
      if (!map.containsKey(p)) {
        map[p] = 1;
      } else {
        map[p] += 1;
      }
    });
    print(map[p]);

    setState(() {
      if (map[p] == null)
        productCount = 0;
      else
        productCount = map[p];
    });
  }
}
