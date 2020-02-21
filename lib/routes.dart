import 'package:flutter/material.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/payment_checkout_screen.dart';
import 'package:flutter_lio_integration/feature/products/product_list.dart';

const String rootRoute = "/";
const String checkout = "/checkout";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootRoute:
        return MaterialPageRoute(builder: (_) => ProductList());
      case checkout:
        return MaterialPageRoute(
            builder: (_) => PaymentCheckoutScreen(product: settings.arguments));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
