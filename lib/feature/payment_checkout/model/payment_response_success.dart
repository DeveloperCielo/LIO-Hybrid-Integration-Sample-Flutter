import 'dart:convert';

import 'package:flutter_lio_integration/feature/payment_checkout/model/payment.dart';

class PaymentCheckoutResponseSuccess {
  String createdAt;
  String id;
  List<Item> items;
  String notes;
  String number;
  int paidAmount;
  List<Payment> payments;
  int pendingAmount;
  int price;
  String reference;
  String status;
  String type;
  String updatedAt;

  PaymentCheckoutResponseSuccess({
    this.createdAt,
    this.id,
    this.items,
    this.notes,
    this.number,
    this.paidAmount,
    this.payments,
    this.pendingAmount,
    this.price,
    this.reference,
    this.status,
    this.type,
    this.updatedAt,
  });

  factory PaymentCheckoutResponseSuccess.fromJson(String str) =>
      PaymentCheckoutResponseSuccess.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PaymentCheckoutResponseSuccess.fromMap(Map<String, dynamic> json) =>
      PaymentCheckoutResponseSuccess(
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        id: json["id"] == null ? null : json["id"],
        items: json["items"] == null
            ? null
            : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        notes: json["notes"] == null ? null : json["notes"],
        number: json["number"] == null ? null : json["number"],
        paidAmount: json["paidAmount"] == null ? null : json["paidAmount"],
        payments: json["payments"] == null
            ? null
            : List<Payment>.from(
                json["payments"].map((x) => Payment.fromMap(x))),
        pendingAmount:
            json["pendingAmount"] == null ? null : json["pendingAmount"],
        price: json["price"] == null ? null : json["price"],
        reference: json["reference"] == null ? null : json["reference"],
        status: json["status"] == null ? null : json["status"],
        type: json["type"] == null ? null : json["type"],
        updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
      );

  Map<String, dynamic> toMap() => {
        "createdAt": createdAt == null ? null : createdAt,
        "id": id == null ? null : id,
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toMap())),
        "notes": notes == null ? null : notes,
        "number": number == null ? null : number,
        "paidAmount": paidAmount == null ? null : paidAmount,
        "payments": payments == null
            ? null
            : List<dynamic>.from(payments.map((x) => x.toMap())),
        "pendingAmount": pendingAmount == null ? null : pendingAmount,
        "price": price == null ? null : price,
        "reference": reference == null ? null : reference,
        "status": status == null ? null : status,
        "type": type == null ? null : type,
        "updatedAt": updatedAt == null ? null : updatedAt,
      };
}

class Item {
  String description;
  String details;
  String id;
  String name;
  int quantity;
  String reference;
  String sku;
  String unitOfMeasure;
  int unitPrice;

  Item({
    this.description,
    this.details,
    this.id,
    this.name,
    this.quantity,
    this.reference,
    this.sku,
    this.unitOfMeasure,
    this.unitPrice,
  });

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        description: json["description"] == null ? null : json["description"],
        details: json["details"] == null ? null : json["details"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        reference: json["reference"] == null ? null : json["reference"],
        sku: json["sku"] == null ? null : json["sku"],
        unitOfMeasure:
            json["unitOfMeasure"] == null ? null : json["unitOfMeasure"],
        unitPrice: json["unitPrice"] == null ? null : json["unitPrice"],
      );

  Map<String, dynamic> toMap() => {
        "description": description == null ? null : description,
        "details": details == null ? null : details,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "quantity": quantity == null ? null : quantity,
        "reference": reference == null ? null : reference,
        "sku": sku == null ? null : sku,
        "unitOfMeasure": unitOfMeasure == null ? null : unitOfMeasure,
        "unitPrice": unitPrice == null ? null : unitPrice,
      };
}
