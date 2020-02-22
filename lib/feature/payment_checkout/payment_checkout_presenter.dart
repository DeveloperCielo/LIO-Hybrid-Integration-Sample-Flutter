import 'dart:convert';

import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_lio_integration/feature/payment_checkout/model/Payment_request.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/model/payment_type.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/payment_checkout_view.dart';
import 'package:flutter_lio_integration/feature/products/model/product.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

import 'model/payment_response.dart';
import 'model/payment_response_success.dart';

class PaymentCheckoutPresenter {
  PaymentCheckoutView _view;
  final Product product;

  PaymentCheckoutPresenter(this.product);

  setView(PaymentCheckoutView view) {
    this._view = view;
  }

  Future checkout(PaymentType paymentType, Product product) async {
    var payment = PaymentRequest.makeOrder(paymentType, product);

    var url = "lio://payment?request=" +
        payment.toBase64Encode() +
        "&urlCallback=order://payment";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      _view.showMessage('Erro: App URI não instalado.');
    }
  }

  void onFailure(PaymentCheckoutResponse response) {
    _view.showMessage(response.toJson());
  }

  void onSuccess(PaymentCheckoutResponseSuccess response) {
    _view.showMessage(response.toJson());
  }

  Future<Null> startListener() async {
    try {
      await getInitialLink();
    } on PlatformException {
      print("error");
    }

    getUriLinksStream().listen((Uri uri) {
      String response = uri.queryParameters["response"];
      if (response.isNotEmpty) {
        String response = uri.queryParameters["response"];
        var coverted =
            String.fromCharCodes(base64Decode(response.replaceAll("\n", "")));
        print(coverted);
        if (uri.queryParameters["responsecode"] != null) {
          onSuccess(PaymentCheckoutResponseSuccess.fromJson(coverted));
        } else {
          onFailure(PaymentCheckoutResponse.fromJson(coverted));
        }
      }
    }, onError: (err) {
      print(err.toString());
    });
  }
}
