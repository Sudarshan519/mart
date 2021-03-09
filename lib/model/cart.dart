class Cart {
  final String name;
  final String asset;
  final String type;
  final int rate;
  int quantity;

  Cart({
    this.name,
    this.asset,
    this.type,
    this.rate,
    this.quantity = 1,
  });

  void toggleDone() {
    quantity++;
  }

  void decreaseDown() {
    quantity == 0 ? 0 : quantity--;
  }
}

