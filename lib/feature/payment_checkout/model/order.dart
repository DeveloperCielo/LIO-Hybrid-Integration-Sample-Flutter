import 'package:flutter_lio_integration/feature/payment_checkout/model/Payment_request.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/model/payment.dart';

class Order {
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

  Order({
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

  factory Order.fromMap(Map<String, dynamic> json) => Order(
        createdAt: json["createdAt"],
        id: json["id"],
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        notes: json["notes"],
        number: json["number"],
        paidAmount: json["paidAmount"],
        payments:
            List<Payment>.from(json["payments"].map((x) => Payment.fromMap(x))),
        pendingAmount: json["pendingAmount"],
        price: json["price"],
        reference: json["reference"],
        status: json["status"],
        type: json["type"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toMap() => {
        "createdAt": createdAt,
        "id": id,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
        "notes": notes,
        "number": number,
        "paidAmount": paidAmount,
        "payments": List<dynamic>.from(payments.map((x) => x.toMap())),
        "pendingAmount": pendingAmount,
        "price": price,
        "reference": reference,
        "status": status,
        "type": type,
        "updatedAt": updatedAt,
      };
}
