class Product {
  final String name;
  final double price;
  final double oldprice;
  final bool isSale;
  int qty;
  final String image;
  final String description;
  final double discount;

  Product(
      {this.name,
      this.price,
      this.oldprice,
      this.qty,
      this.image,
      this.isSale,
      this.discount,
      this.description});

  // increment(int qty) {
  //   qty++;
  //   print(qty);
  // }

  // decrement(int qty) {
  //   return qty--;
  // }
}

final List<Product> product = [
  Product(
      name: 'Almonds',
      price: 499,
      qty: 0,
      image: 'assets/image.png',
      discount: 10,
      isSale: true,
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed'),
  Product(
    name: 'Ndsjkehf',
    price: 499,
    qty: 0,
    isSale: false,
    image: 'assets/image.png',
    description:
        'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
    discount: 20,
  ),
  Product(
      name: 'sefae',
      price: 499,
      qty: 0,
      isSale: false,
      image: 'assets/image.png',
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 30),
  Product(
      name: 'Almonsefads',
      price: 499,
      qty: 0,
      isSale: false,
      image: 'assets/image.png',
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 10),
  Product(
      name: 'Aseflmondseafs',
      price: 499,
      qty: 0,
      isSale: false,
      image: 'assets/image.png',
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 10),
];

final List<Product> topProduct = [
  Product(
      name: 'sefa',
      price: 499,
      qty: 0,
      isSale: false,
      image: 'assets/image.png',
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 10),
  Product(
      name: 'Almoseafnds',
      price: 499,
      qty: 0,
      isSale: true,
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      image: 'assets/image.png',
      discount: 10),
  Product(
      name: 'Almosefnds',
      price: 499,
      qty: 0,
      image: 'assets/image.png',
      isSale: false,
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 10),
  Product(
      name: 'Almonsefds',
      price: 499,
      qty: 0,
      image: 'assets/image.png',
      isSale: false,
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 10),
  Product(
      name: 'asefAlmonds',
      price: 499,
      qty: 0,
      isSale: false,
      image: 'assets/image.png',
      description:
          'Superman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executedSuperman comic book with an alien villain who was frozen and dumped in deep space, rather than being executed',
      discount: 10),
];
