import 'package:flutter/material.dart';
import 'package:flutter_lio_integration/feature/products/model/product.dart';
import 'package:flutter_lio_integration/routes.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> items = Product.list();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha um produto"),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(
              items[index].name,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, checkout, arguments: items[index]);
            },
          );
        }),
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
