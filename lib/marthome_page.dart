import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:martapp/pages/cart_page.dart';
import 'package:martapp/pages/home.dart';
import 'package:martapp/pages/login.dart';

class MartHomePage extends StatefulWidget {
  @override
  _MartHomePageState createState() => _MartHomePageState();
}

class _MartHomePageState extends State<MartHomePage> {
  ScrollController _scrollBottomBarController =
      new ScrollController(); // set controller on scrolling
  bool isScrollingDown = false;
  bool _show = true;
  bool isSignedIn = true;
  double bottomBarHeight = 60; // set bottom bar height
  int index;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController _sheetController;
  @override
  void initState() {
    super.initState();

    _scrollBottomBarController.removeListener(() {});
    myScroll();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;

          hideBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;

          showBottomBar();
        }
      }
    });
  }

  Widget body() {
    switch (index) {
      case 1:
        return CartPage();
        break;
      case 2:
        // return PaymentPage();
        break;
      case 3:
        //  return OfferPage();
        break;
      default:
        return Home(_scaffoldKey);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // final _showBottomSheet = () {
    //   _sheetController = _scaffoldKey.currentState.showBottomSheet((context) {
    //     return Container(
    //         color: Colors.grey[200],
    //         child: Column(mainAxisSize: MainAxisSize.min, children: [
    //           RadioListTile(
    //               dense: true,
    //               title: Text('Test'),
    //               groupValue: 'test',
    //               onChanged: (value) {},
    //               value: true),
    //           RadioListTile(
    //               dense: true,
    //               title: Text('Test'),
    //               groupValue: 'test',
    //               onChanged: (value) {},
    //               value: true),
    //         ]));
    //   });
    // };
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child: isSignedIn?ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('MyName'),
              accountEmail: Text('MyEmail'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
            ),
          ],
        ):Text('Sign IN first'),
      ),
      bottomNavigationBar: _show
          ? BottomAppBar(
              color: Colors.white,
              shape: CircularNotchedRectangle(),
              child: Container(
                decoration: BoxDecoration(boxShadow: []),
                height: bottomBarHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.grey[700],
                          ),
                          Text(
                            'Home',
                            // style: kSubTextStyle.copyWith(
                            //     fontSize: 16, color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.receipt,
                            size: 30,
                            color: Colors.grey[700],
                          ),
                          Text(
                            'Cart',
                            // style:
                            //     kSubTextStyle.copyWith(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 1),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Scan and pay',
                          // style: kSubTextStyle.copyWith(
                          //     color: Colors.grey[700],
                          //     fontSize: 12,
                          //     fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.payment,
                            size: 30,
                            color: Colors.grey[700],
                          ),
                          Text(
                            'Payment',
                            // style:
                            //     kSubTextStyle.copyWith(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.money,
                            size: 30,
                            color: Colors.grey[700],
                          ),
                          Text(
                            'Offers',
                            // style:
                            //     kSubTextStyle.copyWith(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
          : null,

      body: SingleChildScrollView(
          controller: _scrollBottomBarController, child: body()),
      floatingActionButton: _show
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.qr_code,
                color: Colors.black,
                size: 33,
              ),
              onPressed: () {
                setState(() {
                  _show = false;
                });

                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return LoginPage();
                }));
              },
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//bottomSheet: Container(height: 400,color: Colors.blue,child: Text('hello')),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
