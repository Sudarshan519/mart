import 'package:martapp/model/product.dart';

class Cart {
  List<Product> cartList = [];
  addProduct(Product item) {
    bool isPresent = false;
    if (cartList.length > 0) {
      for (int i = 0; i < cartList.length; i++) {
        if (cartList[i] == item) {
          increaseItemQuantity(item);
          isPresent = true;
          break;
        } else
          isPresent = false;
      }
    }
    if (!isPresent) {
      cartList.add(item);
      //print(item.qty);
    }
  }

  decreaseProductQty(Product item) {
    if (cartList.contains(item)) {
      if (item.qty > 1) {
        decreaseItemQuantity(item);
      } else
        removeItem(item);
    }
    else 
    print('error');
  }

  removeItem(item) {
    cartList.remove(item);
  }

  void increaseItemQuantity(Product item) => item.incrementQuantity();
  void decreaseItemQuantity(Product item) => item.decrementQuantity();
}

final cart = Cart();
