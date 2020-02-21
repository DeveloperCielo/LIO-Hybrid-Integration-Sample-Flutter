class Product {
  final String name;
  final int quantity;
  final String sku;
  final String unitOfMeasure;
  final int unitPrice;

  Product(
      {this.name, this.quantity, this.sku, this.unitOfMeasure, this.unitPrice});

  static List<Product> list() {
    return [
      Product(
          name: "COCA-COLA LATA",
          quantity: 1,
          sku: "1111",
          unitOfMeasure: "unidade",
          unitPrice: 1),
      Product(
          name: "X-BURGUER",
          quantity: 2,
          sku: "2222",
          unitOfMeasure: "unidade",
          unitPrice: 2),
      Product(
          name: "FANTA LATA",
          quantity: 2,
          sku: "3333",
          unitOfMeasure: "unidade",
          unitPrice: 3),
    ];
  }
}
