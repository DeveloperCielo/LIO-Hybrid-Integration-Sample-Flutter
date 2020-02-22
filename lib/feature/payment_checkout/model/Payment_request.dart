import 'dart:convert';

import 'package:flutter_lio_integration/constants.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/model/payment_type.dart';
import 'package:flutter_lio_integration/feature/products/model/product.dart';

class PaymentRequest {
  String accessToken;
  String clientId;
  dynamic email;
  int installments;
  List<Item> items;
  String merchantCode;
  String paymentCode;
  int value;

  PaymentRequest({
    this.accessToken,
    this.clientId,
    this.email,
    this.installments,
    this.items,
    this.merchantCode,
    this.paymentCode,
    this.value,
  });

  factory PaymentRequest.fromJson(String str) =>
      PaymentRequest.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PaymentRequest.fromMap(Map<String, dynamic> json) => PaymentRequest(
        accessToken: json["accessToken"] == null ? null : json["accessToken"],
        clientId: json["clientID"] == null ? null : json["clientID"],
        email: json["email"],
        installments:
            json["installments"] == null ? null : json["installments"],
        items: json["items"] == null
            ? null
            : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        merchantCode:
            json["merchantCode"] == null ? null : json["merchantCode"],
        paymentCode: json["paymentCode"] == null ? null : json["paymentCode"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toMap() => {
        "accessToken": accessToken == null ? null : accessToken,
        "clientID": clientId == null ? null : clientId,
        "email": email,
        "installments": installments == null ? null : installments,
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toMap())),
        "merchantCode": merchantCode == null ? null : merchantCode,
        "paymentCode": paymentCode == null ? null : paymentCode,
        "value": value == null ? null : value,
      };

  String toBase64Encode() => covertToBase64();

  covertToBase64() {
    List encodedText = utf8.encode(toJson());
    return base64.encode(encodedText);
  }

  static PaymentRequest makeOrder(PaymentType paymentType, Product product) {
    return PaymentRequest(
        accessToken: Constants.ACCESS_TOKEN,
        clientId: Constants.CLIENT_ID,
        email: "defina_email@gmail.com",
        installments: 0,
        merchantCode: "",
        paymentCode: paymentType == PaymentType.CREDITO_AVISTA
            ? "CREDITO_AVISTA"
            : "DEBITO_AVISTA",
        items: makeItem(product),
        value: product.unitPrice);
  }

  static List<Item> makeItem(Product product) {
    return [
      Item(
          name: product.name,
          quantity: product.quantity,
          sku: product.sku,
          unitOfMeasure: product.unitOfMeasure,
          unitPrice: product.unitPrice)
    ];
  }
}

class Item {
  String name;
  int quantity;
  String sku;
  String unitOfMeasure;
  int unitPrice;

  Item({
    this.name,
    this.quantity,
    this.sku,
    this.unitOfMeasure,
    this.unitPrice,
  });

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        name: json["name"] == null ? null : json["name"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        sku: json["sku"] == null ? null : json["sku"],
        unitOfMeasure:
            json["unitOfMeasure"] == null ? null : json["unitOfMeasure"],
        unitPrice: json["unitPrice"] == null ? null : json["unitPrice"],
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "quantity": quantity == null ? null : quantity,
        "sku": sku == null ? null : sku,
        "unitOfMeasure": unitOfMeasure == null ? null : unitOfMeasure,
        "unitPrice": unitPrice == null ? null : unitPrice,
      };
}
